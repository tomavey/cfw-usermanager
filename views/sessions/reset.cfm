﻿<cfoutput>

	#contentFor(pageTitle="Password Reset - CFW User Manager Demo")#

	<div class="container">

		<section>

			<div class="page-header">
				<h1>Password Reset</h1>
			</div>

			<cfif flashKeyExists("message")>
				<div class="row">
					<div class="span16">
						<div class="alert-message block-message info fade in" data-alert="alert">
							<a href="##" class="close">&times;</a>
							<p><strong>Great!</strong> #flash("message")#</p>
						</div>
					</div>
				</div>
			</cfif>

			<div class="row">
				<div class="span16">
					<p>Enter your e-mail address to reset your password. If your e-mail address if found, we will e-mail you with instructions.</p>
				</div>
			</div>

			<div class="row">
				<div class="span16">
					#startFormTag()#
						<fieldset>
							<div class="clearfix">
								<label for="email">E-mail Address</label>
								<div class="input">
									#textFieldTag(name="email", label=false)#
								</div>
							</div>
							<div class="actions">
								#submitTag(value="Send E-mail", class="btn primary")#
								#linkTo(text="Cancel", route="sessionsHome", class="btn")#
							</div>
						</fieldset>
					#endFormTag()#
				</div>
			</div>

		</section>

	</div>

</cfoutput>