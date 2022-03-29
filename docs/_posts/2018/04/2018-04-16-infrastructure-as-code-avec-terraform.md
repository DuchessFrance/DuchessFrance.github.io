---
layout: "post"
author: 
  - "aurelie"
title: "Infrastructure as Code avec Terraform"
date: "2018-04-16"
categories: 
  - "tech"
tags: 
  - "devops"
  - "iac"
  - "terraform"
coverImage: "duchess_terraform.jpg"
---

| Vous ne voulez plus créer manuellement vos machines physiques, vos VMs, vos VPC, vos conteneurs, vos lambda … ? Nous allons voir dans cet article qu’il existe un outil permettant de faire de l’Infrastructure as Code et qui vous permettra de passer du ClickOps au DevOps. |

[![](/assets/2018/04/2018-04-16-infrastructure-as-code-avec-terraform/duchess_terraform-300x240.jpg)](/assets/2018/04/2018-04-16-infrastructure-as-code-avec-terraform/duchess_terraform.jpg)

Nous commencerons par voir ce qu’est [Terraform](https://www.terraform.io/), les concepts, sa CLI (Command-Line Interface) , nous ferons une mise en pratique de l’outil, puis nous verrons quelques tips et outils sympa et nous ferons une comparaison avec [CloudFormation](https://aws.amazon.com/fr/cloudformation/).

## Qu’est ce que Terraform ?

 

Terraform est un outil créé en 2014 par HashiCorp, la société qui a créé d’autres outils que vous connaissez sûrement : Consul, Vagrant, Vault, Atlas, Packer et Nomad.

C’est un outil Open Source, écrit en Go, avec une communauté active de plus de 1000 contributeurs et qui repose sur une architecture basée sur les plugins.

 

Terraform (TF) est un outil qui permet de **construire**, **modifier** et **versionner** une infrastructure.

Contrairement à ce que l’on peut lire sur internet, la technologie n’est pas plateforme agnostic MAIS elle permet d’utiliser plusieurs providers dans un même template de configuration. Il existe en effet des plugins pour des providers de Cloud, des services d’hébergement, des SCM … Nous le verrons un peu plus tard dans cet article.

### Que fait l’outil ?

- Il assure la création et la cohérence d’infrastructure
- Il permet d’appliquer des modifications incrémentales
- On peut détruire des ressources si besoin
- On peut prévisualiser les modifications avant de les appliquer

# HCL

Les fichiers de configurations s’écrivent en HCL (HashiCorp Configuration Language). Le principe est d’écrire des ressources.

Les ressources peuvent être écrites en JSON également mais il est recommandé de les écrire en HCL.

Lire un fichier de configuration HCL est plutôt simple et intuitif.

[![](/assets/2018/04/2018-04-16-infrastructure-as-code-avec-terraform/tf_file-1024x452.png)](/assets/2018/04/2018-04-16-infrastructure-as-code-avec-terraform/tf_file.png)

C’est un langage dit “human readable”. Ce qu’il faut savoir c’est que Terraform scan tous les fichiers se terminant par .tf dans le répertoire courant, il ne va pas scanner les répertoires enfants par contre.

# Concepts

On va voir ensemble quelques concepts :

## Provider

Un provider est responsable du cycle de vie/du CRUD d’une ressource : sa création, sa lecture, sa mise à jour et sa suppression.

Plusieurs providers sont actuellement supportés :

- AWS, GCP, Azure, OpenStack …
- Heroku, OVH, 1&1 ...
- Consul, Chef, Vault ...
- Docker, Kubernetes ...
- GitLab, BitBucket, GitHub ...
- MySQL, PostgreSQL ...
- mais encore RabbitMQ, DNSimple, CloudFlare …

 

La liste complète des providers est disponible sur le site de TF : [https://www.terraform.io/docs/providers/index.html](https://www.terraform.io/docs/providers/index.html)

 

Vous ne trouvez pas le provider de votre rêve ? Pas de soucis vous pouvez écrire votre propre plugin et participer à l’élaboration de nouvelles fonctionnalités de Terraform. Si vous ne codez pas encore en Go, ce sera l’occasion de vous y mettre ;-).

 

Dans notre cas nous voulons déployer une infra AWS, donc nous allons configurer un provider AWS, il suffit donc de créer une ressource “aws” dans un fichier se terminant par .tf, par exemple _root.tf_ :

 

provider "aws" {
    region = "eu-central-1"
}

 

Bonne pratique : ne pas mettre les credentials directement dans la ressource provider aws mais de setter vos variables d’environnement :

 

$ export AWS\_ACCESS\_KEY=YOUR\_ACCESS\_KEY
$ export AWS\_SECRET\_ACCESS\_KEY=YOUR\_SECRET\_KEY
$ export AWS\_DEFAULT\_REGION=eu-central-1

 

Ou bien vous pouvez les mettre dans un fichier _.aws/credentials_ :

 

\[default\]
aws\_access\_key\_id = YOUR\_ACCESS\_KEY
aws\_secret\_access\_key = YOUR\_SECRET\_KEY

 

Attention, il en va de soi que vous devrez prendre les tokens d’un utilisateur qui aura les droits/la bonne policy pour créer les services que vous voulez.

## Variables

Afin de faire du code propre et qui se réutilise, il est recommandé d’initialiser des variables et de les utiliser dans les autres fichiers .tf.

 

- 1\. Définissez vos variables dans un fichier _variables.tf_, par exemple :

 

variable "default-aws-region" {
    default = "eu-central-1"
}

variable "tags-tool" {
    default = "Terraform"
}

variable "tags-contact" {
    default = "Aurelie Vache"
}

variable "aws\_s3\_folder" {
    default = "s3"
}

variable "aws\_s3\_bucket\_terraform" {
    default = "com.programmez.terraform"
}

 

- 2\. Appelez les dans vos ressources :

 

resource "aws\_s3\_bucket" "com-programmez-terraform" {
    bucket = "${var.aws\_s3\_bucket\_terraform}"
    acl    = "private"

    tags {
        Tool    = "${var.tags-tool}"
        Contact = "${var.tags-contact}"
    }
}

## Modules

Les modules sont utilisés pour créer des composants réutilisables, améliorer l’organisation et traiter les éléments de l’infrastructure comme une boite noire.

C’est un groupe de ressources qui prennent en entrée des paramètres et retournent en sortie des outputs.

 

Dans le même fichier, _root.tf_, dans lequel vous avez défini votre provider, vous pouvez ensuite définir vos modules :

 

module "lambda" {
    source            = "./lambda/"
    bucket            = "${var.aws\_s3\_bucket}"
    titi              = "${var.aws\_s3\_bucket\_titi\_key}"
    tutu              = "${var.aws\_s3\_bucket\_tutu\_key}"
}

## Outputs

Pour faire passer des valeurs d'un module à un autre, on utilise les outputs.

 

_lambda/outputs.tf_ :

 

output "authorizer\_uri" {
    value = "${aws\_lambda\_function.lambda\_toto.invoke\_arn}"
}

 

_aws\_api\_gw.tf_ :

 

resource "aws\_api\_gateway\_authorizer" "custom\_authorizer" {
    name                             = "CustomAuthorizer"
    rest\_api\_id                      = "${aws\_api\_gateway\_rest\_api.toto\_api.id}"
    authorizer\_uri                   = "${module.lambda.authorizer\_uri}"
    identity\_validation\_expression   = "Bearer .\*"
    authorizer\_result\_ttl\_in\_seconds = "30"
}

Les outputs sont utiles également lorsque l'on souhaite afficher des informations à la fin de l’application du terraform apply, en voici un exemple qui affiche  l'URL d'une API GW que l'on a créé :

 

$ terraform apply
...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

programmez\_api\_url = https://1234c67g9cs.execute-api.eu-central-1.amazonaws.com/dev

 

## State

 

Un state est un snapshot de votre infrastructure depuis la dernière fois que vous avez exécuté la commande **terraform apply.**

[![](/assets/2018/04/2018-04-16-infrastructure-as-code-avec-terraform/tf_state.png)](/assets/2018/04/2018-04-16-infrastructure-as-code-avec-terraform/tf_state.png)

Terraform utilise un local storage pour créer les plans et effectuer les changements sur votre infra. Mais il est possible de stocker ce state, dans le cloud.

Pour configurer le stockage de ce state en remote, il suffit de définir un backend.

 

_backend.tf_ :

 

\# Backend configuration is loaded early so we can't use variables
terraform {
    backend "s3" {
        region  = "eu-central-1"
        bucket  = "com.programmez.terraform"
        key     = "state.tfstate"
        encrypt = true
    }
}

# CLI

Terraform a une CLI (Command-Line Interface) facile à utiliser. Nous allons voir quelques commandes, pas toutes, uniquement celles que j’utilise le plus au quotidien.

## Init

 

$ terraform init

 

Cette commande va initialiser votre working directory qui contient vos fichiers de configuration en .tf.

C’est la première commande à exécuter pour une nouvelle configuration, ou après avoir fait un checkout d’une configuration existante depuis votre repo git par exemple.

La commande init va :

- télécharger et installer les providers
- initialiser le backend (si définit)
- télécharger et installer les modules (si définit)

 

## Plan

 

$ terraform plan

 

La commande plan permet de créer un plan d’exécution. Terraform va déterminer quelles actions il doit faire afin d’avoir les ressources listées dans les fichiers de configuration par rapport à ce qui est actuellement en place sur l’environnement/le provider cible.

Cette commande n’effectue concrètement rien sur votre infra.

 

Bonne pratique : afin de sauver le plan, vous pouvez spécifier un fichier de sortie :

 

$ terraform plan -out programmez.out

## Apply

 

$ terraform apply programmez.out

 

La commande apply, comme son nom l’indique, permet d’appliquer les changements à effectuer sur l’infra. C’est cette commande qui va créer nos ressources.

 

Attention, depuis la version 0.11 de Terraform, sorti le 16 novembre dernier, lorsque vous utilisez TF dans un environnement interactif, en local par exemple, mais pas en CI/CD, il est recommandé de ne plus passer par un plan mais de directement faire un apply et de répondre Yes si vous souhaitez appliquer ce plan.

## Destroy

 

$ terraform destroy

 

La commande destroy permet de supprimer TOUTES les ressources.

 

Un plan de suppression peut être généré au préalable :

 

$ terraform plan -destroy

On peut également supprimer uniquement une ressource en particulier :

$ terraform destroy -target aws\_s3\_bucket.com-programmez-terraform

## Console

Grâce à la CLI console, vous pouvez connaitre la valeur d’une ressource terraform. Cette commande est pratique pour faire du debug, avant de créer un plan ou de l’appliquer.

 

$ echo "aws\_iam\_user.programmez.arn" | terraform console

arn:aws:iam::123456789123:user/programmez

## Get

 

$ terraform get

 

Cette commande est utile si par le passé vous avez déjà fait un terraform init puis ajouté un module, il faut préciser maintenant à terraform qu’il faut récupérer le module ou bien le mettre à jour. Si vous ne le faites pas, lors d’un terraform plan, TF vous demandera de le faire ;-).

Lorsque vous définissez des modules, la première chose à faire est de faire un _terraform get_. Cette commande va récupérer les modules et les mettre dans le répertoire .terraform/. Une chose importante à savoir est que les modules sont "vendorés". Cela veut dire qu'a chaque fois que vous modifiez le code de votre module, pour que le module "core" puisse récupérer la dernière version des modules, il faut faire un _terraform get -update=true_.

 

 

## Graph

 

$ terraform graph | dot -Tpng > graph.png

 

La CLI graph permet de dessiner un graphique de dépendances visuelle des ressources terraform en fonction des fichiers de configuration.

[![](/assets/2018/04/2018-04-16-infrastructure-as-code-avec-terraform/graph-300x195.png)](/assets/2018/04/2018-04-16-infrastructure-as-code-avec-terraform/graph.png)

Au bout d’un certains nombre de ressources dans un répertoire, terraform n’arrive plus à générer ce graphique. J’espère que ce problème sera corrigé dans les futures versions ;-).

 

# Trève de blabla, passons à la pratique !

Commençons tout d’abord par installer Terraform :

<table class=" alignleft"><tbody><tr><td style="text-align: left;"><pre>$ curl -O <a href="https://releases.hashicorp.com/terraform/0.11.6/terraform_0.11.6_linux_amd64.zip">https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip</a>
$ sudo unzip terraform_0.11.7_linux_amd64.zip -d /usr/local/bin/
$ rm terraform_0.11.7_linux_amd64.zip</pre></td></tr></tbody></table>

0.11.7 étant la dernière version de Terraform, stable, à ce jour.

Ces commandes vont extraire un binaire dans _/usr/local/bin/_, qui est déjà dans votre _PATH_.

Afin de vérifier que Terraform est correctement installé, veuillez vérifier la version courante de l’outil :

<table><tbody><tr><td style="text-align: left;"><pre>$ terraform --version
Terraform v0.11.7</pre></td></tr></tbody></table>

Info: _terraform -version_ fonctionne également.

## 1/ Création d’un répertoire

<table><tbody><tr><td style="text-align: left;"><pre>$ mkdir programmez/</pre></td></tr></tbody></table>

## 2/ Création d’un fichier .tf

<table><tbody><tr><td style="text-align: left;"><pre>$ vi aws_s3.tf
<div></div>
############### AWS S3 ###############
<div></div>
resource "aws_s3_bucket" "com-programmez-terraform" {
    bucket = "${var.aws_s3_bucket_terraform}"
    acl = "private"
    tags {
        Tool = "${var.tags-tool}"
        Contact = "${var.tags-contact}"
    }
}</pre></td></tr></tbody></table>

## 3/ Pré-requis

Pour indiquer à terraform sur quel compte AWS vous souhaitez déployer l'infrastructure souhaitée, vous devez définir des variables d'environnement AWS au préalable, par exemple dans un fichier .aws/credentials ou avec des variables d'environnement :

 

$ export AWS\_ACCESS\_KEY\_ID="an\_aws\_access\_key"
$ export AWS\_SECRET\_ACCESS\_KEY="a\_aws\_secret\_key"
$ export AWS\_DEFAULT\_REGION="a-region"

## 4/ Initialiser Terraform

<table><tbody><tr><td style="text-align: left;"><pre>$ terraform init
[0m[1mDownloading modules...[0m
[0m[1mInitializing the backend...[0m
[0m[1mInitializing provider plugins...[0m
The following providers do not have any version constraints in configuration,
so the latest version was installed.
To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.
* provider.aws: version = "~&gt; 1.3"</pre></td></tr></tbody></table>

## 5/ Plan

 

<table><tbody><tr><td style="text-align: left;"><pre>$ terraform plan -out crf.out
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.
aws_s3_bucket.com-programmez-terraform: Refreshing state... (ID: com.programmez.terraform)
…
Plan: 1 to add, 0 to change, 0 to destroy.</pre></td></tr></tbody></table>

## 6/ On applique le plan

 

$ terraform apply plan.out

…
 Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

# Outils & Tips

## Terraforming

Afin de nous faciliter la vie, il y a quelques petits outils intéressant à connaître et à utiliser. Si vous avez une infra AWS existante et que vous devez la dupliquer dans plusieurs autres comptes, **[Terraforming](https://github.com/dtan4/terraforming)** est fait pour vous. C’est un outil écrit en Ruby qui permet d’extraire des ressources AWS existantes et de générer un fichier terraform correspondant.

 

Pour l’installer, voici la marche à suivre :

 

$ sudo apt install ruby
$ gem install terraforming

 

Pour extraire un type de ressources c’est très simple. Par exemple si l’on veut extraire des buckets s3 :

 

_$ terraforming s3 > aws\_s3.tf_

 

Comme vous pouvez le constater si vous testez cette commande sur un compte AWS qui contient des buckets s3, cette dernière n’extrait que les buckets, elle n’extrait pas les objets : les zip, jar et divers fichiers contenus dans vos buckets.

Il vous faudra du coup écrire les ressources aws\_s3\_object comme celle-ci :

 

resource "aws\_s3\_bucket\_object" "terraform\_article" {
    bucket = "${var.article\_bucket}"
    key    = "${var.aws\_s3\_bucket\_article\_keystore\_key}"
    source = "${var.aws\_s3\_folder}/${var.aws\_s3\_bucket\_article\_keystore\_key}"
    etag   = "${md5(file("${var.aws\_s3\_folder}/${var.aws\_s3\_bucket\_article\_keystore\_key}"))}"

    tags {
        Tool    = "${var.tags-tool}"
        Contact = "${var.tags-contact}"
    }
}

 

Attention, terraforming ne prend pas en compte toutes les ressources AWS, notamment les API Gateway. De ce fait, même si vous souhaitez dupliquer une API GW existante, il vous faudra vous les écrire à la mimine.

## Gitignore

 

_.gitignore_ :

 

\#  Local .terraform directories
\*\*/.terraform/\*

# .tfstate files
\*.tfstate
\*.tfstate.\*

# .tfvars files
\*.tfvars

# .out files
\*.out

## Comment convertir un local state en remote state ?

Si vous avez déjà, par le passé, créer un local state et que vous avez maintenant définit un state en remote dans un fichier nommé backend.tf, par exemple, voici la marche à suivre pour uploader votre local state terraform.tfstate dans le cloud :

<table><tbody><tr><td style="text-align: left;"><pre>$ terraform init
$ terraform state push</pre></td></tr></tbody></table>

# Et CloudFormation, on l’oublie ?

Comme vous l’avez vu, nous avons opté pour Terraform comme outil pour faire de l’IaC (Infrastructure as Code) pour nos services managés sur AWS mais nous aurions pu partir sur du CloudFormation. On ne s’outille pas pour suivre une mode, ou ce que fait le voisin mais pour répondre aux besoins d’un projet/d’un contexte donné.

 

**Terraform**

 

- Support de presque tous les services AWS et d’autres (cloud) providers
- Open Source
- Pas de rolling update pour les ASG (Auto Scaling Group)
- HCL/JSON
- State management
- Support de Vault

 

**CloudFormation**

 

- **Support de presque tous les services AWS (uniquement ce cloud provider!)**
- Service géré et “offert” par AWS
- Le rolling update d’EC2 par un ASG est supporté
- JSON

- **Pas de State management**

 

 

A noter qu’il est possible de charger du CloudFormation (CF) dans du Terraform, si par exemple vous avez déjà votre stack écrite en CF :

 

\# Setup of an CloudformationStack with terraform
resource "aws\_cloudformation\_stack" "my\_stack" {
    depends\_on = \[
        "aws\_s3\_bucket\_object.lambda\_code",
        "aws\_s3\_bucket\_object.article\_terraform"
    \]
    name = "${var.cf\_stack\_name}"
    template\_url = "[https://${aws\_s3\_bucket.deployment\_bucket.bucket\_domain\_name}/cf\_logic.json"](about:blank)
    provider = "aws.region"
    parameters {
        LambdaCodeAuthorizer = "${basename(var.article\_terraform\_lambda\_jar)}",
        S3CodeBucket = "${aws\_s3\_bucket.deployment\_bucket.id}",
        ...
    }
    tags {
        Tool    = "${var.tags-tool}"
        Contact = "${var.tags-contact}"
    }
}

# Avantages / Inconvénients

Terraform n’est pas une baguette magique, cette techno a des inconvénients, comme pour toutes les technos. Il s’agit notamment d’un outil assez jeune, et en constante évolution donc il y a des bugs et toutes les ressources de tous les providers ne sont pas encore pris en compte.

On peut dresser une petite liste de “Pros” et de “Cons :

 

**Avantages**

 

- **Permet de définir de l’Infrastructure as Code**

- Syntaxe concise et lisible

- Réutilisation de : variables, inputs, outputs, modules

- Commande plan

- Multi cloud support

- Développement très actif

 

 

**Inconvénients**

- Outil jeûne (comporte des bugs)
- Pas de rollback possible
- Verbeux

 

J’ajouterai que les messages d’erreurs ne sont pas super explicite :

 

\* module.lambda.aws\_lambda\_function.lambda\_toto: 1 error(s) occurred:

\* module.lambda.aws\_lambda\_function.lambda\_toto: aws\_lambda\_function.lambda\_toto: InvalidSignatureException: Signature expired: 20171218T075729Z is now earlier than 20171218T080647Z (20171218T081147Z - 5 min.)

status code: 403, request id: 17c82bc7-e3cb-11e7-8a7e-6b18fbf66fae

# Conclusion

Cet article n'est qu'une petite mise en bouche, il reste tant encore à découvrir concernant Terraform : les workspaces, variables à conditions ternaires, count, lookups, l'import de ressources existantes, data sources, l'intégration avec notre fidèle compagnon de Continuous Integration/Continuous Deployment : Jenkins ... Je ferai d'autres articles sur le sujet pour approfondir le sujet si cela vous dit.

Ma conclusion personnelle est que Terraform est un des outils qui permet de faire de l’Infrastructure as Code et de passer du ClickOps au DevOps.
