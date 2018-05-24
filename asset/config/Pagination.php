<?php
namespace Config;
class Pagination{

		function Paginate($values,$page,$per_page)
		{
		
		$total_values = count($values);
		
			if(isset($_GET['page'])){
			$current_page = $_GET['page'];
			}else{
			$current_page = 1;
			}

		$counts = ceil($total_values / $per_page);
		$param1 = ($current_page - 1) * $per_page;
		$this->data = array_slice($values,$param1,$per_page);

		$nextOlder  = "&larr; Older";
		$prevNewer  = "Newer &rarr;";

		$out = "<ul class='pagination justify-content-center mb-4'>";

			// older
			if($param1<($counts-1)) {
				$out.= "<li class='page-item'><a class='page-link' href=\"" . $page . "" .($current_page+1) . "\">" . $nextOlder . "</a></li>";
			}
			else {
				$out.= "<li class='page-item disabled'><a class='page-link' href='#'>" . $nextOlder . "</a></li>";
			}

			// newer
			if($param1==0) {
				$out.= "<li class='page-item disabled'><a class='page-link' href='#'>" . $prevNewer . "</a></li>";
			}
			else {
				$out.= "<li class='page-item'><a class='page-link' href=\"" . $page . "" . ($current_page-1) . "\">" . $prevNewer . "</a></li>";
			}

		$out.= "</ul>";
		return $out;

		// for($x=1; $x<= $counts; $x++){
		// $numbers[] = $x;
		// }
		// return $numbers;
		}

		function fetchResult(){
		$resultsValues = $this->data;
		return $resultsValues;
		}

}