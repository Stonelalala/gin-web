package models

import (
	"github.com/jinzhu/gorm"
	"time"
)

type Article struct {
	Model

	TagID int `json:"tag_id" gorm:"index"`
	Tag Tag `json:"tag"`

	Title string `json:"title"`
	Desc string `json:"desc"`
	Content string `json:"content"`
	CreatedBy string `json:"created_by"`
	ModifiedBy string `json:"modified_by"`
	State int `json:"state"`
}

/**
 * @Description: 根据id判断文章是否存在
 * @param id
 * @return bool
 */
func ExistArticleByID(id int) bool {
	var article  Article
	db.Select("id").Where("id = ?", id).First(&article)

	if article.ID > 0 {
		return true
	}
	return false
}
/**
 * @Description: 添加文章
 * @param id
 * @return article
 */
func GetArticle(id int) (article Article){

	db.Where("id = ?", id).First(&article)
	db.Model(&article).Related(&article.Tag)
	return
}
/**
 * @Description: 添加文章
 * @param data map[string]interface{}
 * @return bool
 */
func AddArticle(data map[string]interface{}) bool {
	db.Create(&Article{
		TagID: data["tag_id"].(int),
		Title: data["title"].(string),
		Desc : data["desc"].(string),
		Content: data["content"].(string),
		CreatedBy : data["created_by"].(string),
		State: data["state"].(int),
	})
	return true
}

/**
 * @Description: 编辑文章
 * @param id int
 * @param data interface{}
 * @return bool
 */
func EditArticle(id int, data interface{}) bool {
	db.Model(&Article{}).Where("id = ?", id).Updates(data)
	return true
}
/**
 * @Description: 删除文章
 * @param id int
 * @return bool
 */
func DeleteArticle(id int) bool {
	db.Where("id = ?", id).Delete(&Article{})
	return true
}

/**
 * @Description: 获取文章总数
 * @param maps
 * @return count
 */
func GetArticleTotal(maps interface{}) (count int){
	db.Model(&Article{}).Where(maps).Count(&count)
	return
}
/**
 * @Description: 获取文章列表
 * @param pageNum
 * @param pageSize
 * @param maps
 * @return articles
 */
func GetArticles(pageNum int, pageSize int, maps interface{}) (articles []Article){
	db.Preload("Tag").Where(maps).Offset(pageNum).Limit(pageSize).Find(&articles)
	return
}

/**
 * @Description:
 * @receiver article
 * @param scope
 * @return error
 */
func (article Article) BeforeCreate(scope *gorm.Scope) error {
	scope.SetColumn("CreatedOn", time.Now().Unix())
	return nil
}

func (article Article)BeforeUpdate(scope gorm.Scope) error {
	scope.SetColumn("ModifiedOn", time.Now().Unix())
	return nil
}
