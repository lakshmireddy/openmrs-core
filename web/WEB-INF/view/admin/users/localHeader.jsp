<ul id="menu">
	<li class="first">
		<a href="${pageContext.request.contextPath}/admin"><spring:message code="admin.title.short"/></a>
	</li>
	<openmrs:hasPrivilege privilege="Add Users,Edit Users,Delete Users,View Users">
		<li <c:if test="<%= request.getRequestURI().contains("users/user") %>">class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/admin/users/user.list">
				<spring:message code="User.manage"/>
			</a>
		</li>
	</openmrs:hasPrivilege>
	<openmrs:hasPrivilege privilege="Manage Groups">
		<li <c:if test="<%= request.getRequestURI().contains("group") %>">class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/admin/users/group.list">
				<spring:message code="Group.manage"/>
			</a>
		</li>
	</openmrs:hasPrivilege>
	<openmrs:hasPrivilege privilege="Manage Roles">
		<li <c:if test="<%= request.getRequestURI().contains("role") %>">class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/admin/users/role.list">
				<spring:message code="Role.manage"/>
			</a>
		</li>
	</openmrs:hasPrivilege>
	<openmrs:hasPrivilege privilege="Manage Privileges">
		<li <c:if test="<%= request.getRequestURI().contains("privilege") %>">class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/admin/users/privilege.list">
				<spring:message code="Privilege.manage"/>
			</a>
		</li>
	</openmrs:hasPrivilege>
</ul>