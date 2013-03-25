<h1>Blog posts</h1>
<table>
	<tr>
		<th>Id</th>
		<th>Nom</th>
		<th>Description</th>
		<th>Image</th>
	</tr>

	<!-- Here is where we loop through our $posts array, printing out post info -->

	<?php foreach ($products as $product): ?>
	<tr>
		<td><?php echo $product['Product']['id']; ?></td>
		<td>
			<?php echo $this->Html->link($product['Product']['name'],
			array('controller' => 'Products', 'action' => 'view', $product['Product']['id'])); ?>
		</td>
		<td><?php echo $product['Product']['image']; ?></td>
	</tr>
	<?php endforeach; ?>
	<?php unset($product); ?>
</table>