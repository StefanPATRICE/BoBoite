<h1>Blog posts</h1>
<table>
	<tr>
		<th>Id</th>
		<th>Nom</th>
		<th>Description</th>
		<th>Image</th>
	</tr>

	<!-- Here is where we loop through our $posts array, printing out post info -->

	<?php foreach ($declinations as $declination): ?>
	<tr>
		<td><?php echo $declination['Product']['id']; ?></td>
		<td>
			<?php echo $this->Html->link($declination['Product']['name'],
			array('controller' => 'Products', 'action' => 'admin_view', $declination['Product']['id'])); ?>
		</td>
		<td><?php echo $declination['Product']['image']; ?></td>
	</tr>
	<?php endforeach; ?>
	<?php unset($declination); ?>
</table>