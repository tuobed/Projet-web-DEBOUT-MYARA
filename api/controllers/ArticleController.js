/**
 * ArticleController
 *
 * @description :: Server-side logic for managing articles
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	newArticle: function(req, res) {
		var title = String(req.param('title'));
		var content = String(req.param('content'));

	    Article.create({Nom: title, Contenu: content}, function(err,created) {
	    	if(err) sails.log.error(err);
	    	else {
	    		return res.redirect("/");
	    	}
	    });
	},
	getArticle: function(req, res) {
    	Article.find({}, function(err, found){
    		if(err) sails.log.error(err);
    		else {
    			return res.view( 'articles', {articles: found} );
    		}
    	});
	},
	deleteArticle: function(req, res) {
		var id = Number(req.param('id'));

		Article.destroy({id: id}).exec(function (err){
  			if(err) sails.log.error(err);
  			else {
  				return res.redirect("/");
  			}
		});
	},
	updateArticle: function(req, res) {
		var title = String (req.param('title'));
		var content = String (req.param('content'));
		var newTitle = String(req.param('newTitle'));
		var newContent = String(req.param('newContent'));

		console.log(newTitle);
		console.log(newContent);

		Article.update({Nom : title, Contenu : content}, {Nom: newTitle, Contenu: newContent}).exec(function afterwards(err, updated){

  			if (err) {
  				return res.negotiate(err);
  			}
  			return res.redirect("/");

  			console.log('Updated user to have name ' + updated[0].name);
		});
	},
	getOneArticle: function(req, res) {
		var id = Number(req.param('id'));
    	Article.find({id: id}, function(err, found){
    		if(err) sails.log.error(err);
    		else {
    			return res.view( 'updateArticle', {articles: found} );
    		}
    	});
	},
	OneofThem: function(req, res) {
		var title = String (req.param('title'));
		var content = String (req.param('content'));
		var newTitle = String(req.param('newTitle'));
		var newContent = String(req.param('newContent'));

		console.log(newTitle);
		console.log(newContent);

		Article.update({Nom : title, Contenu : content}, {Nom: newTitle, Contenu: newContent}).exec(function afterwards(err, updated){

  			if (err) {
  				return res.negotiate(err);
  			}
  			return res.redirect("/");

  			console.log('Updated user to have name ' + updated[0].name);
		});
	},
	getOneOfThem: function(req, res) {
		var id = Number(req.param('id'));
    	Article.find({id: id}, function(err, found){
    		if(err) sails.log.error(err);
    		else {
    			return res.view( 'OneOfThem', {articles: found} );
    		}
    	});
	},
};

