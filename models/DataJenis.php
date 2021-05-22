<?php
namespace app\models;

use yii\db\ActiveRecord;

class DataJenis extends ActiveRecord
{
	public static function tableName()
	{
		return 'jenis';
	}
}