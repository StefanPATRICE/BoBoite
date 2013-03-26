<h1>Blog posts</h1>
<table>
	<tr>
		<th>Id</th>
		<th>Nom</th>
		<th>Description</th>
		<th>Image</th>
		<th></th>
	</tr>

	<!-- Here is where we loop through our $posts array, printing out post info -->

	<tr>
		<td><?php echo $declination['Product']['id']; ?></td>
		<td>
			<?php echo $this->Html->link($declination['Product']['name'],
			array('controller' => 'Products', 'action' => 'view', $declination['Product']['id'])); ?>
		</td>
		<td><?php echo $declination['Product']['description']; ?></td>
		<td><?php echo $declination['Product']['image']; ?></td>
		<td>
			<?php echo $this->Form->create(); ?>
			<?php echo $this->Form->input('username', array('label' => 'Username')); ?>
			<?php echo $this->Form->end(); ?>
		</td>
	</tr>
	<?php unset($declination); ?>
</table>