<?php
use yii\helpers\Html;
?>
<p>Terimakasih sudah mengimputkan pada form:</p>
<ul>
<li><label>Name</label>; <?= Html::encode($model->name) ?></li>
<li><label>Email</label>; <?= Html::encode($model->email) ?></li> 
<li><label>Notelp</label>; <?= Html::encode($model->telp) ?></li>
<li><label>Alamat</label>; <?= Html::encode($model->alamat) ?></li></ul>
