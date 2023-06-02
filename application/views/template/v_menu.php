   <!--start sidebar -->
   <aside class="sidebar-wrapper" data-simplebar="true">
       <div class="sidebar-header">
           <div>
               <img src="<?= base_url(); ?>assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
           </div>
           <div>
               <h4 class="logo-text">e-KP</h4>
           </div>
           <div class="toggle-icon ms-auto"><i class="bi bi-chevron-double-left"></i>
           </div>
       </div>
       <!--navigation-->
       <ul class="metismenu" id="menu">
           <li class="active">
               <a href="<?=base_url();?>">
                   <div class="parent-icon"><i class="bi bi-house-door"></i>
                   </div>
                   <div class="menu-title">Dashboard</div>
               </a>
           </li>
           <!-- Section Menu From DB -->
           <?php
            $lvl1 = array_filter($_list_menu, function ($obj) {
                return $obj['level'] === '1';
            });
            
            foreach ($lvl1 as $r1) {
                if($r1['have_child']){
                    echo "<li>
                            <a href='javascript:;' class='has-arrow'>
                                <div class='parent-icon'><i class='".$r1['icon']."'></i>
                                </div>
                                <div class='menu-title'>".$r1['name']."</div>
                            </a>
                            <ul>";
                    $id =  $r1['id'];
                    $lvl2 = array_filter($_list_menu, function ($obj) use ($id) {
                        return $obj['parent'] === $id;
                    });
                    foreach($lvl2 as $r2){
                        if($r2['have_child']){
                            echo "<li>
                                    <a href='javascript:;' class='has-arrow'>
                                        <div class='parent-icon'><i class='".$r2['icon']."'></i>
                                        </div>
                                        <div class='menu-title'>".$r2['name']."</div>
                                    </a>
                                    <ul>";
                            $id =  $r2['id'];
                            $lvl3 = array_filter($_list_menu, function ($obj) use ($id) {
                                return $obj['parent'] === $id;
                            });
                            foreach($lvl3 as $r3){
                                echo "  <li><a href='".base_url().$r3['url']."'><i class='bi bi-arrow-right-short'></i>".$r3['name']."</a> </li>";
                            }
                            echo "</ul></li>";
                        }else{
                            echo "  <li><a href='".base_url().$r2['url']."'><i class='bi bi-arrow-right-short'></i>".$r2['name']."</a></li>";
                        }                        
                    } 
                    echo "</ul></li>";                   
                }else{
                    echo "  <li>
                                <a href='".($r1['id'] == 16 ? $r1['url'] : base_url().$r1['url'] ) ."' ".($r1['id'] == 16 ? " target='_blank'" : "")." >
                                    <div class='parent-icon'><i class='".$r1['icon']."'></i>
                                    </div>
                                    <div class='menu-title'>".$r1['name']."</div>
                                </a>
                            </li>";
                }
            }
            ?>
           <!-- End Section -->
           <li class="menu-label">
            <hr>
           </li>
       </ul>
       <!--end navigation-->


   </aside>
   <!--end sidebar -->