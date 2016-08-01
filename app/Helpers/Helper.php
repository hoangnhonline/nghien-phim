<?php

use App\Helpers\simple_html_dom;

namespace App\Helpers;

class Helper
{
    public static function shout(string $string)
    {
        return strtoupper($string);
    }

    public static function showImage($image_url){

        return strpos($image_url, 'http') === false ? config('icho.upload_url').$image_url : $image_url;

    }

    public static function getSiteOriginal($url){
        
        if(strpos($url, 'xvideos') > 0){
           
            return 1;            

        }elseif(strpos($url, 'hihi.com') > 0 ){
            
            return 2;

        }elseif(strpos($url, 'redtube.com') > 0){
           
            return 3;

        }elseif(strpos($url, 'youporn.com') > 0){
            
            return 4;

        }else{            
            
            return 5;

        } 
    }

    public static function getDetailVideoFromExternalSite($url){
        $arrReturn = [];
        $isXvideo = 0;
        $img_url = '';
        //$url = 'https://www.tnaflix.com/hardcore-porn/Anal-Beautiful-Teen-tight-ass/video1986389';
        //$url = 'http://javhihi.com/movie/cock-sucking-asian-girls-in-naughty-action.2504.html';
        //$url = 'http://www.redtube.com/1569950';
        //$url = 'http://www.youporn.com/watch/12902219/exibitionist-dude-pinoy-astig/';
        //$url = 'http://www.xvideos.com/video20196023/posh_british_webcam_chick_more_on_youcamgirl.net_webcamgirls_';        
            
        $ch = curl_init($url);    
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
        if(strpos($url, 'xvideos') > 0){
            curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420.1 (KHTML, like Gecko) Version/3.0 Mobile/3B48b Safari/419.3');    
        }
        curl_setopt($ch, CURLOPT_AUTOREFERER, TRUE);
        $result = curl_exec($ch);    

        curl_close($ch);    

         // Create a DOM object
        $html = new simple_html_dom();
        // Load HTML from a string
        $html->load($result);

        if(strpos($url, 'xvideos') > 0){
            $tmpArr = explode("html5player.setVideoUrlHigh('", $result);
            
            $tmpArr = explode("');", $tmpArr[1]);
            
            $arrReturn['video_url'] = $tmpArr[0];

            $arrReturn['image_url'] = $html->find('meta[property="og:image"]', 0)->content;
            $title = $html->find('title', 0)->innerText();
            $title = str_replace(" - XVIDEOS.COM", "", $title);

        }elseif(strpos($url, 'hihi.com') > 0 ){
            $title = $html->find('title', 0)->innerText();
            $arrReturn['video_url'] = $html->find('source[data-res]', 0)->src;

            $arrReturn['image_url'] = $html->find('meta[property="og:image"]', 0)->content; 

            $title = str_replace(" - Free JAV HD", "", $title);

        }elseif(strpos($url, 'redtube.com') > 0){
            $title = $html->find('title', 0)->innerText();
            $arrReturn['video_url'] = $html->find('source', 0)->src;

            $arrReturn['image_url'] = $html->find('video', 0)->poster; 

        }elseif(strpos($url, 'youporn.com') > 0){
            $title = $html->find('title', 0)->innerText();
            $arrReturn['video_url'] = $html->find('.downloadOption', 0)->find('a', 0)->href;

            $arrReturn['image_url'] = $html->find('meta[property="og:image"]', 0)->content;

            $title = str_replace(" - YouPorn", "", $title);

        }else{
            
            $html = file_get_html($url);

            $title = $html->find('title', 0)->innerText();

            $arrReturn['video_url'] = $html->find('meta[itemprop="contentUrl"]', 0)->content;

            $arrReturn['image_url'] = $html->find('meta[itemprop="thumbnailUrl"]', 0)->content;                

            $title = str_replace(" - TNAFlix Porn Videos", "", $title);
        }    
        
        $arrReturn['title'] = $title;
        return $arrReturn;    
    }

    public static function uploadPhoto($file, $base_folder = '', $date_dir=false){
    
        $return = [];

        $basePath = '';

        $basePath = $base_folder ? $basePath .= $base_folder ."/" : $basePath = $basePath;

        $basePath = $date_dir == true ? $basePath .= date('Y/m/d'). '/'  : $basePath = $basePath;        
        
        $desPath = config('icho.upload_path'). $basePath;

        //set name for file
        $fileName = $file->getClientOriginalName();
        
        $tmpArr = explode('.', $fileName);

        // Get image extension
        $imgExt = array_pop($tmpArr);

        // Get image name exclude extension
        $imgNameOrigin = preg_replace('/(.*)(_\d+x\d+)/', '$1', implode('.', $tmpArr));        

        $imgName = str_slug($imgNameOrigin, '-');
        
        $imgName = $imgName."-".time();

        $newFileName = "{$imgName}.{$imgExt}";
        
        if( $file->move($desPath, $newFileName) ){
            $imagePath = $basePath.$newFileName;
            $return['image_name'] = $newFileName;
            $return['image_path'] = $imagePath;
        }

        return $return;
    }

    public static function changeFileName($str) {
        $str = self::stripUnicode($str);
        $str = str_replace("?", "", $str);
        $str = str_replace("&", "", $str);
        $str = str_replace("'", "", $str);
        $str = str_replace("  ", " ", $str);
        $str = trim($str);
        $str = mb_convert_case($str, MB_CASE_LOWER, 'utf-8');
        $str = str_replace(" ", "-", $str);
        $str = str_replace("---", "-", $str);
        $str = str_replace("--", "-", $str);
        $str = str_replace('"', '', $str);
        $str = str_replace('"', "", $str);
        $str = str_replace(":", "", $str);
        $str = str_replace("(", "", $str);
        $str = str_replace(")", "", $str);
        $str = str_replace(",", "", $str);
        $str = str_replace(".", "", $str);
        $str = str_replace(".", "", $str);
        $str = str_replace(".", "", $str);
        $str = str_replace("%", "", $str);
        return $str;
    }

    public static function stripUnicode($str) {
        if (!$str)
            return false;
        $unicode = array(
            'a' => 'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
            'A' => 'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
            'd' => 'đ',
            'D' => 'Đ',
            'e' => 'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
            'E' => 'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
            'i' => 'í|ì|ỉ|ĩ|ị',
            'I' => 'Í|Ì|Ỉ|Ĩ|Ị',
            'o' => 'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
            'O' => 'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
            'u' => 'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
            'U' => 'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
            'y' => 'ý|ỳ|ỷ|ỹ|ỵ',
            'Y' => 'Ý|Ỳ|Ỷ|Ỹ|Ỵ',
            '' => '?',
            '-' => '/'
        );
        foreach ($unicode as $khongdau => $codau) {
            $arr = explode("|", $codau);
            $str = str_replace($arr, $khongdau, $str);
        }
        return $str;
    }
}