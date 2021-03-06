/*
 * generated by Xtext 2.12.0
 */
package co.classlayout2frontend.c2fdsl.formatting2

import co.classLayout2Frontend.ContainerView
import co.classLayout2Frontend.EntitiesModel
import co.classLayout2Frontend.EntityModelElement
import co.classLayout2Frontend.PageView
import co.classLayout2Frontend.Project
import co.classLayout2Frontend.SiteView
import co.classlayout2frontend.c2fdsl.services.C2fDSLGrammarAccess
import com.google.inject.Inject
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument

class C2fDSLFormatter extends AbstractFormatter2 {
	
	@Inject extension C2fDSLGrammarAccess

	def dispatch void format(Project project, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		project.getEntitiesmodel.format;
		for (SiteView siteView : project.getSiteViews()) {
			siteView.format;
		}
		for (PageView pageView : project.getPageViews()) {
			pageView.format;
		}
		for (ContainerView containerView : project.getContainerViews()) {
			containerView.format;
		}
	}

	def dispatch void format(EntitiesModel entitiesModel, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (EntityModelElement entityModelElement : entitiesModel.getModelElements()) {
			entityModelElement.format;
		}
	}
	
	// TODO: implement for Entity, Enumeration, StaticContainer, IterationContainer, InputForm
}
