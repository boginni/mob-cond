import 'package:yukem_dashboard/generated/json/base/json_convert_content.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_noticias/moddels/noticia_entity.dart';

NoticiaEntity $NoticiaEntityFromJson(Map<String, dynamic> json) {
	final NoticiaEntity noticiaEntity = NoticiaEntity();
	final String? sId = jsonConvert.convert<String>(json['_id']);
	if (sId != null) {
		noticiaEntity.sId = sId;
	}
	final String? titulo = jsonConvert.convert<String>(json['titulo']);
	if (titulo != null) {
		noticiaEntity.titulo = titulo;
	}
	final String? conteudo = jsonConvert.convert<String>(json['conteudo']);
	if (conteudo != null) {
		noticiaEntity.conteudo = conteudo;
	}
	final int? likes = jsonConvert.convert<int>(json['likes']);
	if (likes != null) {
		noticiaEntity.likes = likes;
	}
	final int? comentarios = jsonConvert.convert<int>(json['comentarios']);
	if (comentarios != null) {
		noticiaEntity.comentarios = comentarios;
	}
	final String? dataInsercao = jsonConvert.convert<String>(json['dataInsercao']);
	if (dataInsercao != null) {
		noticiaEntity.dataInsercao = dataInsercao;
	}
	final String? user = jsonConvert.convert<String>(json['user']);
	if (user != null) {
		noticiaEntity.user = user;
	}
	return noticiaEntity;
}

Map<String, dynamic> $NoticiaEntityToJson(NoticiaEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['_id'] = entity.sId;
	data['titulo'] = entity.titulo;
	data['conteudo'] = entity.conteudo;
	data['likes'] = entity.likes;
	data['comentarios'] = entity.comentarios;
	data['dataInsercao'] = entity.dataInsercao;
	data['user'] = entity.user;
	return data;
}