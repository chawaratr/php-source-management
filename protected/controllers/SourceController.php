<?php

class SourceController extends Controller
{

    public function actionIndex()
    {
        //$criteria = new CDbCriteria();
        if (isset($_POST["get_room"]) && $_POST["get_room"] <> "")
        {
            $criteria->condition = 'booking_room_id = "' . $_POST["get_room"] . '"';
        }
        //$criteria->order = "booking_date_start desc";
        //$prov = new CActiveDataProvider('BookingModels', array('pagination' => array('pagesize' => 100)));
        //$prov->criteria = $criteria;

        //$this->render('index', array('provider' => $prov));
        $this->render('index');
    }
    
    public function actionCo()
    {
        if ((strpos(Yii::app()->session["member_access"], '[system_setting]')) or ( strpos(Yii::app()->session["member_access"], '[Admin]')))
        {
            unset(yii::app()->session["access_denied_message"]);
            $criteria = new CDbCriteria();

            if (isset($_POST["get_fname"]) && $_POST["get_fname"] <> "")
            {
                $match = addcslashes($_POST["get_fname"], '%_'); // escape LIKE's special characters
                $criteria = new CDbCriteria(array('condition' => "member_fname LIKE :get_fname", 'params' => array(':get_fname' => "%$match%")));
            }
            else if (isset($_POST["get_department"]) && $_POST["get_department"] <> "")
            {
                $criteria->condition = 'department = "' . $_POST["get_department"] . '"';
            }

            $criteria->order = "member_fname";
            $prov = new CActiveDataProvider('MemberModels', array('pagination' => array('pagesize' => 500)));
            $prov->criteria = $criteria;

            $this->render('Co_View', array('provider' => $prov));
        }
        else
        {
            yii::app()->session["access_denied_message"] = '[system_setting]';
            Yii::app()->runController('site/access_denied');
        }
    }

    

}
