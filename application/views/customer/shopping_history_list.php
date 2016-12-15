 <!DOCTYPE html>
<html lang="en">
	<head>
    	<title>Front-End Toko Online </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body>
    <?php $this->load->view('layout/top_menu')?>
    
    	<?php if($history != false) : ?>
        <?= $this->session->flashdata('message')?>
        <table class="table table-bordered table-striped table-hover">
        	<thead>
                <tr>
                    <th>Invoice ID#</th>
                    <th>Invoice Date</th>
                    <th>Due Date</th>
                    <th>Total Amount</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
            	<?php 
				foreach($history as $row):
				?>
            	<tr>
                	<td><?= $row->id ?></td>
                    <td><?= $row->date ?></td>
                    <td><?= $row->due_date ?></td>
                    <td><?= $row->total ?></td>
                    <td>
						<?= $row->status ?>
                        <?php 
							if($row->status='unpaid'){
							anchor('customer/payment_confirmation/'.$row->id,'confirm payment',
									array('class' =>'btn btn-primary btn-xs')
								  );
							}	  
						?>
                    </td>       
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table> 
        <?php else : ?>	
        <p align="center">There are no shopping history for you... <?=anchor('/','shop now')?> </p>
        <?php endif; ?>
     </body>
</html>
