﻿<cfparam name="user">

<cfoutput>

	#contentFor(pageTitle="#user.name#'s Page")#

	<div class="container">
		<div class="page-header">
			<div class="row">
				<div class="span8">
					<h1>#user.name#</h1>
				</div>
				<div class="span8 ar">
				</div>
			</div>				
		</div>

		<div class="row">
			<div class="span12">
				#flashMessageTag()#
				<p>Joined on #DateFormat(user.createdAt, "medium")#.</p>
				<p>#linkTo(text="&larr; Back", action="index")#</p>
			</div>
			<div class="span4 ar">
				<cfif signedIn() AND user.id EQ currentUser.id>
					<span class="ar">#linkTo(text="Edit Profile", action="edit", key=user.id)#</span>
				</cfif>
			</div>
		</div>
	</div>

</cfoutput>