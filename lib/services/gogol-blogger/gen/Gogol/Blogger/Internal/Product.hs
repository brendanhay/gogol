{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Blogger.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Blogger.Internal.Product
  ( -- * Blog
    Blog (..),
    newBlog,

    -- * Blog_Locale
    Blog_Locale (..),
    newBlog_Locale,

    -- * Blog_Pages
    Blog_Pages (..),
    newBlog_Pages,

    -- * Blog_Posts
    Blog_Posts (..),
    newBlog_Posts,

    -- * BlogList
    BlogList (..),
    newBlogList,

    -- * BlogPerUserInfo
    BlogPerUserInfo (..),
    newBlogPerUserInfo,

    -- * BlogUserInfo
    BlogUserInfo (..),
    newBlogUserInfo,

    -- * Comment
    Comment (..),
    newComment,

    -- * Comment_Author
    Comment_Author (..),
    newComment_Author,

    -- * Comment_Author_Image
    Comment_Author_Image (..),
    newComment_Author_Image,

    -- * Comment_Blog
    Comment_Blog (..),
    newComment_Blog,

    -- * Comment_InReplyTo
    Comment_InReplyTo (..),
    newComment_InReplyTo,

    -- * Comment_Post
    Comment_Post (..),
    newComment_Post,

    -- * CommentList
    CommentList (..),
    newCommentList,

    -- * Page
    Page (..),
    newPage,

    -- * Page_Author
    Page_Author (..),
    newPage_Author,

    -- * Page_Author_Image
    Page_Author_Image (..),
    newPage_Author_Image,

    -- * Page_Blog
    Page_Blog (..),
    newPage_Blog,

    -- * PageList
    PageList (..),
    newPageList,

    -- * Pageviews
    Pageviews (..),
    newPageviews,

    -- * Pageviews_CountsItem
    Pageviews_CountsItem (..),
    newPageviews_CountsItem,

    -- * Post'
    Post' (..),
    newPost,

    -- * Post_Author
    Post_Author (..),
    newPost_Author,

    -- * Post_Author_Image
    Post_Author_Image (..),
    newPost_Author_Image,

    -- * Post_Blog
    Post_Blog (..),
    newPost_Blog,

    -- * Post_ImagesItem
    Post_ImagesItem (..),
    newPost_ImagesItem,

    -- * Post_Location
    Post_Location (..),
    newPost_Location,

    -- * Post_Replies
    Post_Replies (..),
    newPost_Replies,

    -- * PostList
    PostList (..),
    newPostList,

    -- * PostPerUserInfo
    PostPerUserInfo (..),
    newPostPerUserInfo,

    -- * PostUserInfo
    PostUserInfo (..),
    newPostUserInfo,

    -- * PostUserInfosList
    PostUserInfosList (..),
    newPostUserInfosList,

    -- * User
    User (..),
    newUser,

    -- * User_Blogs
    User_Blogs (..),
    newUser_Blogs,

    -- * User_Locale
    User_Locale (..),
    newUser_Locale,
  )
where

import Gogol.Blogger.Internal.Sum
import qualified Gogol.Prelude as Core

--
-- /See:/ 'newBlog' smart constructor.
data Blog = Blog
  { -- | The JSON custom meta-data for the Blog.
    customMetaData :: (Core.Maybe Core.Text),
    -- | The description of this blog. This is displayed underneath the title.
    description :: (Core.Maybe Core.Text),
    -- | The identifier for this resource.
    id :: (Core.Maybe Core.Text),
    -- | The kind of this entry. Always blogger#blog.
    kind :: (Core.Maybe Core.Text),
    -- | The locale this Blog is set to.
    locale :: (Core.Maybe Blog_Locale),
    -- | The name of this blog. This is displayed as the title.
    name :: (Core.Maybe Core.Text),
    -- | The container of pages in this blog.
    pages :: (Core.Maybe Blog_Pages),
    -- | The container of posts in this blog.
    posts :: (Core.Maybe Blog_Posts),
    -- | RFC 3339 date-time when this blog was published.
    published :: (Core.Maybe Core.Text),
    -- | The API REST URL to fetch this resource from.
    selfLink :: (Core.Maybe Core.Text),
    -- | The status of the blog.
    status :: (Core.Maybe Blog_Status),
    -- | RFC 3339 date-time when this blog was last updated.
    updated :: (Core.Maybe Core.Text),
    -- | The URL where this blog is published.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Blog' with the minimum fields required to make a request.
newBlog ::
  Blog
newBlog =
  Blog
    { customMetaData = Core.Nothing,
      description = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      locale = Core.Nothing,
      name = Core.Nothing,
      pages = Core.Nothing,
      posts = Core.Nothing,
      published = Core.Nothing,
      selfLink = Core.Nothing,
      status = Core.Nothing,
      updated = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Blog where
  parseJSON =
    Core.withObject
      "Blog"
      ( \o ->
          Blog
            Core.<$> (o Core..:? "customMetaData")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pages")
            Core.<*> (o Core..:? "posts")
            Core.<*> (o Core..:? "published")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Blog where
  toJSON Blog {..} =
    Core.object
      ( Core.catMaybes
          [ ("customMetaData" Core..=) Core.<$> customMetaData,
            ("description" Core..=) Core.<$> description,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("locale" Core..=) Core.<$> locale,
            ("name" Core..=) Core.<$> name,
            ("pages" Core..=) Core.<$> pages,
            ("posts" Core..=) Core.<$> posts,
            ("published" Core..=) Core.<$> published,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("status" Core..=) Core.<$> status,
            ("updated" Core..=) Core.<$> updated,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The locale this Blog is set to.
--
-- /See:/ 'newBlog_Locale' smart constructor.
data Blog_Locale = Blog_Locale
  { -- | The country this blog\'s locale is set to.
    country :: (Core.Maybe Core.Text),
    -- | The language this blog is authored in.
    language :: (Core.Maybe Core.Text),
    -- | The language variant this blog is authored in.
    variant :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Blog_Locale' with the minimum fields required to make a request.
newBlog_Locale ::
  Blog_Locale
newBlog_Locale =
  Blog_Locale
    { country = Core.Nothing,
      language = Core.Nothing,
      variant = Core.Nothing
    }

instance Core.FromJSON Blog_Locale where
  parseJSON =
    Core.withObject
      "Blog_Locale"
      ( \o ->
          Blog_Locale
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "variant")
      )

instance Core.ToJSON Blog_Locale where
  toJSON Blog_Locale {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("language" Core..=) Core.<$> language,
            ("variant" Core..=) Core.<$> variant
          ]
      )

-- | The container of pages in this blog.
--
-- /See:/ 'newBlog_Pages' smart constructor.
data Blog_Pages = Blog_Pages
  { -- | The URL of the container for pages in this blog.
    selfLink :: (Core.Maybe Core.Text),
    -- | The count of pages in this blog.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Blog_Pages' with the minimum fields required to make a request.
newBlog_Pages ::
  Blog_Pages
newBlog_Pages = Blog_Pages {selfLink = Core.Nothing, totalItems = Core.Nothing}

instance Core.FromJSON Blog_Pages where
  parseJSON =
    Core.withObject
      "Blog_Pages"
      ( \o ->
          Blog_Pages
            Core.<$> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON Blog_Pages where
  toJSON Blog_Pages {..} =
    Core.object
      ( Core.catMaybes
          [ ("selfLink" Core..=) Core.<$> selfLink,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

-- | The container of posts in this blog.
--
-- /See:/ 'newBlog_Posts' smart constructor.
data Blog_Posts = Blog_Posts
  { -- | The List of Posts for this Blog.
    items :: (Core.Maybe [Post']),
    -- | The URL of the container for posts in this blog.
    selfLink :: (Core.Maybe Core.Text),
    -- | The count of posts in this blog.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Blog_Posts' with the minimum fields required to make a request.
newBlog_Posts ::
  Blog_Posts
newBlog_Posts =
  Blog_Posts
    { items = Core.Nothing,
      selfLink = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON Blog_Posts where
  parseJSON =
    Core.withObject
      "Blog_Posts"
      ( \o ->
          Blog_Posts
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON Blog_Posts where
  toJSON Blog_Posts {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

--
-- /See:/ 'newBlogList' smart constructor.
data BlogList = BlogList
  { -- | Admin level list of blog per-user information.
    blogUserInfos :: (Core.Maybe [BlogUserInfo]),
    -- | The list of Blogs this user has Authorship or Admin rights over.
    items :: (Core.Maybe [Blog]),
    -- | The kind of this entity. Always blogger#blogList.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BlogList' with the minimum fields required to make a request.
newBlogList ::
  BlogList
newBlogList =
  BlogList
    { blogUserInfos = Core.Nothing,
      items = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON BlogList where
  parseJSON =
    Core.withObject
      "BlogList"
      ( \o ->
          BlogList
            Core.<$> (o Core..:? "blogUserInfos" Core..!= Core.mempty)
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON BlogList where
  toJSON BlogList {..} =
    Core.object
      ( Core.catMaybes
          [ ("blogUserInfos" Core..=) Core.<$> blogUserInfos,
            ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newBlogPerUserInfo' smart constructor.
data BlogPerUserInfo = BlogPerUserInfo
  { -- | ID of the Blog resource.
    blogId :: (Core.Maybe Core.Text),
    -- | True if the user has Admin level access to the blog.
    hasAdminAccess :: (Core.Maybe Core.Bool),
    -- | The kind of this entity. Always blogger#blogPerUserInfo.
    kind :: (Core.Maybe Core.Text),
    -- | The Photo Album Key for the user when adding photos to the blog.
    photosAlbumKey :: (Core.Maybe Core.Text),
    -- | Access permissions that the user has for the blog (ADMIN, AUTHOR, or READER).
    role' :: (Core.Maybe BlogPerUserInfo_Role),
    -- | ID of the User.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BlogPerUserInfo' with the minimum fields required to make a request.
newBlogPerUserInfo ::
  BlogPerUserInfo
newBlogPerUserInfo =
  BlogPerUserInfo
    { blogId = Core.Nothing,
      hasAdminAccess = Core.Nothing,
      kind = Core.Nothing,
      photosAlbumKey = Core.Nothing,
      role' = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON BlogPerUserInfo where
  parseJSON =
    Core.withObject
      "BlogPerUserInfo"
      ( \o ->
          BlogPerUserInfo
            Core.<$> (o Core..:? "blogId")
            Core.<*> (o Core..:? "hasAdminAccess")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "photosAlbumKey")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON BlogPerUserInfo where
  toJSON BlogPerUserInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("blogId" Core..=) Core.<$> blogId,
            ("hasAdminAccess" Core..=) Core.<$> hasAdminAccess,
            ("kind" Core..=) Core.<$> kind,
            ("photosAlbumKey" Core..=) Core.<$> photosAlbumKey,
            ("role" Core..=) Core.<$> role',
            ("userId" Core..=) Core.<$> userId
          ]
      )

--
-- /See:/ 'newBlogUserInfo' smart constructor.
data BlogUserInfo = BlogUserInfo
  { -- | The Blog resource.
    blog :: (Core.Maybe Blog),
    -- | Information about a User for the Blog.
    blogUserInfo :: (Core.Maybe BlogPerUserInfo),
    -- | The kind of this entity. Always blogger#blogUserInfo.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BlogUserInfo' with the minimum fields required to make a request.
newBlogUserInfo ::
  BlogUserInfo
newBlogUserInfo =
  BlogUserInfo
    { blog = Core.Nothing,
      blogUserInfo = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON BlogUserInfo where
  parseJSON =
    Core.withObject
      "BlogUserInfo"
      ( \o ->
          BlogUserInfo
            Core.<$> (o Core..:? "blog")
            Core.<*> (o Core..:? "blog_user_info")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON BlogUserInfo where
  toJSON BlogUserInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("blog" Core..=) Core.<$> blog,
            ("blog_user_info" Core..=) Core.<$> blogUserInfo,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newComment' smart constructor.
data Comment = Comment
  { -- | The author of this Comment.
    author :: (Core.Maybe Comment_Author),
    -- | Data about the blog containing this comment.
    blog :: (Core.Maybe Comment_Blog),
    -- | The actual content of the comment. May include HTML markup.
    content :: (Core.Maybe Core.Text),
    -- | The identifier for this resource.
    id :: (Core.Maybe Core.Text),
    -- | Data about the comment this is in reply to.
    inReplyTo :: (Core.Maybe Comment_InReplyTo),
    -- | The kind of this entry. Always blogger#comment.
    kind :: (Core.Maybe Core.Text),
    -- | Data about the post containing this comment.
    post :: (Core.Maybe Comment_Post),
    -- | RFC 3339 date-time when this comment was published.
    published :: (Core.Maybe Core.Text),
    -- | The API REST URL to fetch this resource from.
    selfLink :: (Core.Maybe Core.Text),
    -- | The status of the comment (only populated for admin users).
    status :: (Core.Maybe Comment_Status),
    -- | RFC 3339 date-time when this comment was last updated.
    updated :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
newComment ::
  Comment
newComment =
  Comment
    { author = Core.Nothing,
      blog = Core.Nothing,
      content = Core.Nothing,
      id = Core.Nothing,
      inReplyTo = Core.Nothing,
      kind = Core.Nothing,
      post = Core.Nothing,
      published = Core.Nothing,
      selfLink = Core.Nothing,
      status = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON Comment where
  parseJSON =
    Core.withObject
      "Comment"
      ( \o ->
          Comment
            Core.<$> (o Core..:? "author")
            Core.<*> (o Core..:? "blog")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "inReplyTo")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "post")
            Core.<*> (o Core..:? "published")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON Comment where
  toJSON Comment {..} =
    Core.object
      ( Core.catMaybes
          [ ("author" Core..=) Core.<$> author,
            ("blog" Core..=) Core.<$> blog,
            ("content" Core..=) Core.<$> content,
            ("id" Core..=) Core.<$> id,
            ("inReplyTo" Core..=) Core.<$> inReplyTo,
            ("kind" Core..=) Core.<$> kind,
            ("post" Core..=) Core.<$> post,
            ("published" Core..=) Core.<$> published,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("status" Core..=) Core.<$> status,
            ("updated" Core..=) Core.<$> updated
          ]
      )

-- | The author of this Comment.
--
-- /See:/ 'newComment_Author' smart constructor.
data Comment_Author = Comment_Author
  { -- | The display name.
    displayName :: (Core.Maybe Core.Text),
    -- | The identifier of the creator.
    id :: (Core.Maybe Core.Text),
    -- | The creator\'s avatar.
    image :: (Core.Maybe Comment_Author_Image),
    -- | The URL of the creator\'s Profile page.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Author' with the minimum fields required to make a request.
newComment_Author ::
  Comment_Author
newComment_Author =
  Comment_Author
    { displayName = Core.Nothing,
      id = Core.Nothing,
      image = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Comment_Author where
  parseJSON =
    Core.withObject
      "Comment_Author"
      ( \o ->
          Comment_Author
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Comment_Author where
  toJSON Comment_Author {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            ("image" Core..=) Core.<$> image,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The creator\'s avatar.
--
-- /See:/ 'newComment_Author_Image' smart constructor.
newtype Comment_Author_Image = Comment_Author_Image
  { -- | The creator\'s avatar URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Author_Image' with the minimum fields required to make a request.
newComment_Author_Image ::
  Comment_Author_Image
newComment_Author_Image = Comment_Author_Image {url = Core.Nothing}

instance Core.FromJSON Comment_Author_Image where
  parseJSON =
    Core.withObject
      "Comment_Author_Image"
      ( \o ->
          Comment_Author_Image Core.<$> (o Core..:? "url")
      )

instance Core.ToJSON Comment_Author_Image where
  toJSON Comment_Author_Image {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | Data about the blog containing this comment.
--
-- /See:/ 'newComment_Blog' smart constructor.
newtype Comment_Blog = Comment_Blog
  { -- | The identifier of the blog containing this comment.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Blog' with the minimum fields required to make a request.
newComment_Blog ::
  Comment_Blog
newComment_Blog = Comment_Blog {id = Core.Nothing}

instance Core.FromJSON Comment_Blog where
  parseJSON =
    Core.withObject
      "Comment_Blog"
      (\o -> Comment_Blog Core.<$> (o Core..:? "id"))

instance Core.ToJSON Comment_Blog where
  toJSON Comment_Blog {..} =
    Core.object
      (Core.catMaybes [("id" Core..=) Core.<$> id])

-- | Data about the comment this is in reply to.
--
-- /See:/ 'newComment_InReplyTo' smart constructor.
newtype Comment_InReplyTo = Comment_InReplyTo
  { -- | The identified of the parent of this comment.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_InReplyTo' with the minimum fields required to make a request.
newComment_InReplyTo ::
  Comment_InReplyTo
newComment_InReplyTo = Comment_InReplyTo {id = Core.Nothing}

instance Core.FromJSON Comment_InReplyTo where
  parseJSON =
    Core.withObject
      "Comment_InReplyTo"
      (\o -> Comment_InReplyTo Core.<$> (o Core..:? "id"))

instance Core.ToJSON Comment_InReplyTo where
  toJSON Comment_InReplyTo {..} =
    Core.object
      (Core.catMaybes [("id" Core..=) Core.<$> id])

-- | Data about the post containing this comment.
--
-- /See:/ 'newComment_Post' smart constructor.
newtype Comment_Post = Comment_Post
  { -- | The identifier of the post containing this comment.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Post' with the minimum fields required to make a request.
newComment_Post ::
  Comment_Post
newComment_Post = Comment_Post {id = Core.Nothing}

instance Core.FromJSON Comment_Post where
  parseJSON =
    Core.withObject
      "Comment_Post"
      (\o -> Comment_Post Core.<$> (o Core..:? "id"))

instance Core.ToJSON Comment_Post where
  toJSON Comment_Post {..} =
    Core.object
      (Core.catMaybes [("id" Core..=) Core.<$> id])

--
-- /See:/ 'newCommentList' smart constructor.
data CommentList = CommentList
  { -- | Etag of the response.
    etag :: (Core.Maybe Core.Text),
    -- | The List of Comments for a Post.
    items :: (Core.Maybe [Comment]),
    -- | The kind of this entry. Always blogger#commentList.
    kind :: (Core.Maybe Core.Text),
    -- | Pagination token to fetch the next page, if one exists.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Pagination token to fetch the previous page, if one exists.
    prevPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentList' with the minimum fields required to make a request.
newCommentList ::
  CommentList
newCommentList =
  CommentList
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      prevPageToken = Core.Nothing
    }

instance Core.FromJSON CommentList where
  parseJSON =
    Core.withObject
      "CommentList"
      ( \o ->
          CommentList
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "prevPageToken")
      )

instance Core.ToJSON CommentList where
  toJSON CommentList {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("prevPageToken" Core..=) Core.<$> prevPageToken
          ]
      )

--
-- /See:/ 'newPage' smart constructor.
data Page = Page
  { -- | The author of this Page.
    author :: (Core.Maybe Page_Author),
    -- | Data about the blog containing this Page.
    blog :: (Core.Maybe Page_Blog),
    -- | The body content of this Page, in HTML.
    content :: (Core.Maybe Core.Text),
    -- | Etag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The identifier for this resource.
    id :: (Core.Maybe Core.Text),
    -- | The kind of this entity. Always blogger#page.
    kind :: (Core.Maybe Core.Text),
    -- | RFC 3339 date-time when this Page was published.
    published :: (Core.Maybe Core.Text),
    -- | The API REST URL to fetch this resource from.
    selfLink :: (Core.Maybe Core.Text),
    -- | The status of the page for admin resources (either LIVE or DRAFT).
    status :: (Core.Maybe Page_Status),
    -- | The title of this entity. This is the name displayed in the Admin user interface.
    title :: (Core.Maybe Core.Text),
    -- | RFC 3339 date-time when this Page was last updated.
    updated :: (Core.Maybe Core.Text),
    -- | The URL that this Page is displayed at.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Page' with the minimum fields required to make a request.
newPage ::
  Page
newPage =
  Page
    { author = Core.Nothing,
      blog = Core.Nothing,
      content = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      published = Core.Nothing,
      selfLink = Core.Nothing,
      status = Core.Nothing,
      title = Core.Nothing,
      updated = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Page where
  parseJSON =
    Core.withObject
      "Page"
      ( \o ->
          Page
            Core.<$> (o Core..:? "author")
            Core.<*> (o Core..:? "blog")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "published")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Page where
  toJSON Page {..} =
    Core.object
      ( Core.catMaybes
          [ ("author" Core..=) Core.<$> author,
            ("blog" Core..=) Core.<$> blog,
            ("content" Core..=) Core.<$> content,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("published" Core..=) Core.<$> published,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("status" Core..=) Core.<$> status,
            ("title" Core..=) Core.<$> title,
            ("updated" Core..=) Core.<$> updated,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The author of this Page.
--
-- /See:/ 'newPage_Author' smart constructor.
data Page_Author = Page_Author
  { -- | The display name.
    displayName :: (Core.Maybe Core.Text),
    -- | The identifier of the creator.
    id :: (Core.Maybe Core.Text),
    -- | The creator\'s avatar.
    image :: (Core.Maybe Page_Author_Image),
    -- | The URL of the creator\'s Profile page.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Page_Author' with the minimum fields required to make a request.
newPage_Author ::
  Page_Author
newPage_Author =
  Page_Author
    { displayName = Core.Nothing,
      id = Core.Nothing,
      image = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Page_Author where
  parseJSON =
    Core.withObject
      "Page_Author"
      ( \o ->
          Page_Author
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Page_Author where
  toJSON Page_Author {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            ("image" Core..=) Core.<$> image,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The creator\'s avatar.
--
-- /See:/ 'newPage_Author_Image' smart constructor.
newtype Page_Author_Image = Page_Author_Image
  { -- | The creator\'s avatar URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Page_Author_Image' with the minimum fields required to make a request.
newPage_Author_Image ::
  Page_Author_Image
newPage_Author_Image = Page_Author_Image {url = Core.Nothing}

instance Core.FromJSON Page_Author_Image where
  parseJSON =
    Core.withObject
      "Page_Author_Image"
      ( \o ->
          Page_Author_Image Core.<$> (o Core..:? "url")
      )

instance Core.ToJSON Page_Author_Image where
  toJSON Page_Author_Image {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | Data about the blog containing this Page.
--
-- /See:/ 'newPage_Blog' smart constructor.
newtype Page_Blog = Page_Blog
  { -- | The identifier of the blog containing this page.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Page_Blog' with the minimum fields required to make a request.
newPage_Blog ::
  Page_Blog
newPage_Blog = Page_Blog {id = Core.Nothing}

instance Core.FromJSON Page_Blog where
  parseJSON =
    Core.withObject
      "Page_Blog"
      (\o -> Page_Blog Core.<$> (o Core..:? "id"))

instance Core.ToJSON Page_Blog where
  toJSON Page_Blog {..} =
    Core.object
      (Core.catMaybes [("id" Core..=) Core.<$> id])

--
-- /See:/ 'newPageList' smart constructor.
data PageList = PageList
  { -- | Etag of the response.
    etag :: (Core.Maybe Core.Text),
    -- | The list of Pages for a Blog.
    items :: (Core.Maybe [Page]),
    -- | The kind of this entity. Always blogger#pageList.
    kind :: (Core.Maybe Core.Text),
    -- | Pagination token to fetch the next page, if one exists.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageList' with the minimum fields required to make a request.
newPageList ::
  PageList
newPageList =
  PageList
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON PageList where
  parseJSON =
    Core.withObject
      "PageList"
      ( \o ->
          PageList
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON PageList where
  toJSON PageList {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newPageviews' smart constructor.
data Pageviews = Pageviews
  { -- | Blog Id.
    blogId :: (Core.Maybe Core.Text),
    -- | The container of posts in this blog.
    counts :: (Core.Maybe [Pageviews_CountsItem]),
    -- | The kind of this entry. Always blogger#page_views.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pageviews' with the minimum fields required to make a request.
newPageviews ::
  Pageviews
newPageviews =
  Pageviews {blogId = Core.Nothing, counts = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON Pageviews where
  parseJSON =
    Core.withObject
      "Pageviews"
      ( \o ->
          Pageviews
            Core.<$> (o Core..:? "blogId")
            Core.<*> (o Core..:? "counts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON Pageviews where
  toJSON Pageviews {..} =
    Core.object
      ( Core.catMaybes
          [ ("blogId" Core..=) Core.<$> blogId,
            ("counts" Core..=) Core.<$> counts,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newPageviews_CountsItem' smart constructor.
data Pageviews_CountsItem = Pageviews_CountsItem
  { -- | Count of page views for the given time range.
    count :: (Core.Maybe Core.Int64),
    -- | Time range the given count applies to.
    timeRange :: (Core.Maybe Pageviews_CountsItem_TimeRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pageviews_CountsItem' with the minimum fields required to make a request.
newPageviews_CountsItem ::
  Pageviews_CountsItem
newPageviews_CountsItem =
  Pageviews_CountsItem {count = Core.Nothing, timeRange = Core.Nothing}

instance Core.FromJSON Pageviews_CountsItem where
  parseJSON =
    Core.withObject
      "Pageviews_CountsItem"
      ( \o ->
          Pageviews_CountsItem
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "timeRange")
      )

instance Core.ToJSON Pageviews_CountsItem where
  toJSON Pageviews_CountsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("timeRange" Core..=) Core.<$> timeRange
          ]
      )

--
-- /See:/ 'newPost' smart constructor.
data Post' = Post'
  { -- | The author of this Post.
    author :: (Core.Maybe Post_Author),
    -- | Data about the blog containing this Post.
    blog :: (Core.Maybe Post_Blog),
    -- | The content of the Post. May contain HTML markup.
    content :: (Core.Maybe Core.Text),
    -- | The JSON meta-data for the Post.
    customMetaData :: (Core.Maybe Core.Text),
    -- | Etag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The identifier of this Post.
    id :: (Core.Maybe Core.Text),
    -- | Display image for the Post.
    images :: (Core.Maybe [Post_ImagesItem]),
    -- | The kind of this entity. Always blogger#post.
    kind :: (Core.Maybe Core.Text),
    -- | The list of labels this Post was tagged with.
    labels :: (Core.Maybe [Core.Text]),
    -- | The location for geotagged posts.
    location :: (Core.Maybe Post_Location),
    -- | RFC 3339 date-time when this Post was published.
    published :: (Core.Maybe Core.Text),
    -- | Comment control and display setting for readers of this post.
    readerComments :: (Core.Maybe Post_ReaderComments),
    -- | The container of comments on this Post.
    replies :: (Core.Maybe Post_Replies),
    -- | The API REST URL to fetch this resource from.
    selfLink :: (Core.Maybe Core.Text),
    -- | Status of the post. Only set for admin-level requests.
    status :: (Core.Maybe Post_Status),
    -- | The title of the Post.
    title :: (Core.Maybe Core.Text),
    -- | The title link URL, similar to atom\'s related link.
    titleLink :: (Core.Maybe Core.Text),
    -- | RFC 3339 date-time when this Post was last updated.
    updated :: (Core.Maybe Core.Text),
    -- | The URL where this Post is displayed.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Post' with the minimum fields required to make a request.
newPost ::
  Post'
newPost =
  Post'
    { author = Core.Nothing,
      blog = Core.Nothing,
      content = Core.Nothing,
      customMetaData = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      images = Core.Nothing,
      kind = Core.Nothing,
      labels = Core.Nothing,
      location = Core.Nothing,
      published = Core.Nothing,
      readerComments = Core.Nothing,
      replies = Core.Nothing,
      selfLink = Core.Nothing,
      status = Core.Nothing,
      title = Core.Nothing,
      titleLink = Core.Nothing,
      updated = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Post' where
  parseJSON =
    Core.withObject
      "Post'"
      ( \o ->
          Post'
            Core.<$> (o Core..:? "author")
            Core.<*> (o Core..:? "blog")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "customMetaData")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "images" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "labels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "published")
            Core.<*> (o Core..:? "readerComments")
            Core.<*> (o Core..:? "replies")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "titleLink")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Post' where
  toJSON Post' {..} =
    Core.object
      ( Core.catMaybes
          [ ("author" Core..=) Core.<$> author,
            ("blog" Core..=) Core.<$> blog,
            ("content" Core..=) Core.<$> content,
            ("customMetaData" Core..=) Core.<$> customMetaData,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            ("images" Core..=) Core.<$> images,
            ("kind" Core..=) Core.<$> kind,
            ("labels" Core..=) Core.<$> labels,
            ("location" Core..=) Core.<$> location,
            ("published" Core..=) Core.<$> published,
            ("readerComments" Core..=) Core.<$> readerComments,
            ("replies" Core..=) Core.<$> replies,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("status" Core..=) Core.<$> status,
            ("title" Core..=) Core.<$> title,
            ("titleLink" Core..=) Core.<$> titleLink,
            ("updated" Core..=) Core.<$> updated,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The author of this Post.
--
-- /See:/ 'newPost_Author' smart constructor.
data Post_Author = Post_Author
  { -- | The display name.
    displayName :: (Core.Maybe Core.Text),
    -- | The identifier of the creator.
    id :: (Core.Maybe Core.Text),
    -- | The creator\'s avatar.
    image :: (Core.Maybe Post_Author_Image),
    -- | The URL of the creator\'s Profile page.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Post_Author' with the minimum fields required to make a request.
newPost_Author ::
  Post_Author
newPost_Author =
  Post_Author
    { displayName = Core.Nothing,
      id = Core.Nothing,
      image = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Post_Author where
  parseJSON =
    Core.withObject
      "Post_Author"
      ( \o ->
          Post_Author
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Post_Author where
  toJSON Post_Author {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            ("image" Core..=) Core.<$> image,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The creator\'s avatar.
--
-- /See:/ 'newPost_Author_Image' smart constructor.
newtype Post_Author_Image = Post_Author_Image
  { -- | The creator\'s avatar URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Post_Author_Image' with the minimum fields required to make a request.
newPost_Author_Image ::
  Post_Author_Image
newPost_Author_Image = Post_Author_Image {url = Core.Nothing}

instance Core.FromJSON Post_Author_Image where
  parseJSON =
    Core.withObject
      "Post_Author_Image"
      ( \o ->
          Post_Author_Image Core.<$> (o Core..:? "url")
      )

instance Core.ToJSON Post_Author_Image where
  toJSON Post_Author_Image {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | Data about the blog containing this Post.
--
-- /See:/ 'newPost_Blog' smart constructor.
newtype Post_Blog = Post_Blog
  { -- | The identifier of the Blog that contains this Post.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Post_Blog' with the minimum fields required to make a request.
newPost_Blog ::
  Post_Blog
newPost_Blog = Post_Blog {id = Core.Nothing}

instance Core.FromJSON Post_Blog where
  parseJSON =
    Core.withObject
      "Post_Blog"
      (\o -> Post_Blog Core.<$> (o Core..:? "id"))

instance Core.ToJSON Post_Blog where
  toJSON Post_Blog {..} =
    Core.object
      (Core.catMaybes [("id" Core..=) Core.<$> id])

--
-- /See:/ 'newPost_ImagesItem' smart constructor.
newtype Post_ImagesItem = Post_ImagesItem
  { -- |
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Post_ImagesItem' with the minimum fields required to make a request.
newPost_ImagesItem ::
  Post_ImagesItem
newPost_ImagesItem = Post_ImagesItem {url = Core.Nothing}

instance Core.FromJSON Post_ImagesItem where
  parseJSON =
    Core.withObject
      "Post_ImagesItem"
      (\o -> Post_ImagesItem Core.<$> (o Core..:? "url"))

instance Core.ToJSON Post_ImagesItem where
  toJSON Post_ImagesItem {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | The location for geotagged posts.
--
-- /See:/ 'newPost_Location' smart constructor.
data Post_Location = Post_Location
  { -- | Location\'s latitude.
    lat :: (Core.Maybe Core.Double),
    -- | Location\'s longitude.
    lng :: (Core.Maybe Core.Double),
    -- | Location name.
    name :: (Core.Maybe Core.Text),
    -- | Location\'s viewport span. Can be used when rendering a map preview.
    span :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Post_Location' with the minimum fields required to make a request.
newPost_Location ::
  Post_Location
newPost_Location =
  Post_Location
    { lat = Core.Nothing,
      lng = Core.Nothing,
      name = Core.Nothing,
      span = Core.Nothing
    }

instance Core.FromJSON Post_Location where
  parseJSON =
    Core.withObject
      "Post_Location"
      ( \o ->
          Post_Location
            Core.<$> (o Core..:? "lat")
            Core.<*> (o Core..:? "lng")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "span")
      )

instance Core.ToJSON Post_Location where
  toJSON Post_Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("lat" Core..=) Core.<$> lat,
            ("lng" Core..=) Core.<$> lng,
            ("name" Core..=) Core.<$> name,
            ("span" Core..=) Core.<$> span
          ]
      )

-- | The container of comments on this Post.
--
-- /See:/ 'newPost_Replies' smart constructor.
data Post_Replies = Post_Replies
  { -- | The List of Comments for this Post.
    items :: (Core.Maybe [Comment]),
    -- | The URL of the comments on this post.
    selfLink :: (Core.Maybe Core.Text),
    -- | The count of comments on this post.
    totalItems :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Post_Replies' with the minimum fields required to make a request.
newPost_Replies ::
  Post_Replies
newPost_Replies =
  Post_Replies
    { items = Core.Nothing,
      selfLink = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON Post_Replies where
  parseJSON =
    Core.withObject
      "Post_Replies"
      ( \o ->
          Post_Replies
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON Post_Replies where
  toJSON Post_Replies {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("totalItems" Core..=) Core.. Core.AsText
              Core.<$> totalItems
          ]
      )

--
-- /See:/ 'newPostList' smart constructor.
data PostList = PostList
  { -- | Etag of the response.
    etag :: (Core.Maybe Core.Text),
    -- | The list of Posts for this Blog.
    items :: (Core.Maybe [Post']),
    -- | The kind of this entity. Always blogger#postList.
    kind :: (Core.Maybe Core.Text),
    -- | Pagination token to fetch the next page, if one exists.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Pagination token to fetch the previous page, if one exists.
    prevPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostList' with the minimum fields required to make a request.
newPostList ::
  PostList
newPostList =
  PostList
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      prevPageToken = Core.Nothing
    }

instance Core.FromJSON PostList where
  parseJSON =
    Core.withObject
      "PostList"
      ( \o ->
          PostList
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "prevPageToken")
      )

instance Core.ToJSON PostList where
  toJSON PostList {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("prevPageToken" Core..=) Core.<$> prevPageToken
          ]
      )

--
-- /See:/ 'newPostPerUserInfo' smart constructor.
data PostPerUserInfo = PostPerUserInfo
  { -- | ID of the Blog that the post resource belongs to.
    blogId :: (Core.Maybe Core.Text),
    -- | True if the user has Author level access to the post.
    hasEditAccess :: (Core.Maybe Core.Bool),
    -- | The kind of this entity. Always blogger#postPerUserInfo.
    kind :: (Core.Maybe Core.Text),
    -- | ID of the Post resource.
    postId :: (Core.Maybe Core.Text),
    -- | ID of the User.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostPerUserInfo' with the minimum fields required to make a request.
newPostPerUserInfo ::
  PostPerUserInfo
newPostPerUserInfo =
  PostPerUserInfo
    { blogId = Core.Nothing,
      hasEditAccess = Core.Nothing,
      kind = Core.Nothing,
      postId = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON PostPerUserInfo where
  parseJSON =
    Core.withObject
      "PostPerUserInfo"
      ( \o ->
          PostPerUserInfo
            Core.<$> (o Core..:? "blogId")
            Core.<*> (o Core..:? "hasEditAccess")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "postId")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON PostPerUserInfo where
  toJSON PostPerUserInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("blogId" Core..=) Core.<$> blogId,
            ("hasEditAccess" Core..=) Core.<$> hasEditAccess,
            ("kind" Core..=) Core.<$> kind,
            ("postId" Core..=) Core.<$> postId,
            ("userId" Core..=) Core.<$> userId
          ]
      )

--
-- /See:/ 'newPostUserInfo' smart constructor.
data PostUserInfo = PostUserInfo
  { -- | The kind of this entity. Always blogger#postUserInfo.
    kind :: (Core.Maybe Core.Text),
    -- | The Post resource.
    post :: (Core.Maybe Post'),
    -- | Information about a User for the Post.
    postUserInfo :: (Core.Maybe PostPerUserInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostUserInfo' with the minimum fields required to make a request.
newPostUserInfo ::
  PostUserInfo
newPostUserInfo =
  PostUserInfo
    { kind = Core.Nothing,
      post = Core.Nothing,
      postUserInfo = Core.Nothing
    }

instance Core.FromJSON PostUserInfo where
  parseJSON =
    Core.withObject
      "PostUserInfo"
      ( \o ->
          PostUserInfo
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "post")
            Core.<*> (o Core..:? "post_user_info")
      )

instance Core.ToJSON PostUserInfo where
  toJSON PostUserInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("post" Core..=) Core.<$> post,
            ("post_user_info" Core..=) Core.<$> postUserInfo
          ]
      )

--
-- /See:/ 'newPostUserInfosList' smart constructor.
data PostUserInfosList = PostUserInfosList
  { -- | The list of Posts with User information for the post, for this Blog.
    items :: (Core.Maybe [PostUserInfo]),
    -- | The kind of this entity. Always blogger#postList.
    kind :: (Core.Maybe Core.Text),
    -- | Pagination token to fetch the next page, if one exists.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostUserInfosList' with the minimum fields required to make a request.
newPostUserInfosList ::
  PostUserInfosList
newPostUserInfosList =
  PostUserInfosList
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON PostUserInfosList where
  parseJSON =
    Core.withObject
      "PostUserInfosList"
      ( \o ->
          PostUserInfosList
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON PostUserInfosList where
  toJSON PostUserInfosList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | Profile summary information.
    about :: (Core.Maybe Core.Text),
    -- | The container of blogs for this user.
    blogs :: (Core.Maybe User_Blogs),
    -- | The timestamp of when this profile was created, in seconds since epoch.
    created :: (Core.Maybe Core.Text),
    -- | The display name.
    displayName :: (Core.Maybe Core.Text),
    -- | The identifier for this User.
    id :: (Core.Maybe Core.Text),
    -- | The kind of this entity. Always blogger#user.
    kind :: (Core.Maybe Core.Text),
    -- | This user\'s locale
    locale :: (Core.Maybe User_Locale),
    -- | The API REST URL to fetch this resource from.
    selfLink :: (Core.Maybe Core.Text),
    -- | The user\'s profile page.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { about = Core.Nothing,
      blogs = Core.Nothing,
      created = Core.Nothing,
      displayName = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      locale = Core.Nothing,
      selfLink = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "about")
            Core.<*> (o Core..:? "blogs")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("about" Core..=) Core.<$> about,
            ("blogs" Core..=) Core.<$> blogs,
            ("created" Core..=) Core.<$> created,
            ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("locale" Core..=) Core.<$> locale,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The container of blogs for this user.
--
-- /See:/ 'newUser_Blogs' smart constructor.
newtype User_Blogs = User_Blogs
  { -- | The URL of the Blogs for this user.
    selfLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User_Blogs' with the minimum fields required to make a request.
newUser_Blogs ::
  User_Blogs
newUser_Blogs = User_Blogs {selfLink = Core.Nothing}

instance Core.FromJSON User_Blogs where
  parseJSON =
    Core.withObject
      "User_Blogs"
      (\o -> User_Blogs Core.<$> (o Core..:? "selfLink"))

instance Core.ToJSON User_Blogs where
  toJSON User_Blogs {..} =
    Core.object
      ( Core.catMaybes
          [("selfLink" Core..=) Core.<$> selfLink]
      )

-- | This user\'s locale
--
-- /See:/ 'newUser_Locale' smart constructor.
data User_Locale = User_Locale
  { -- | The country this blog\'s locale is set to.
    country :: (Core.Maybe Core.Text),
    -- | The language this blog is authored in.
    language :: (Core.Maybe Core.Text),
    -- | The language variant this blog is authored in.
    variant :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User_Locale' with the minimum fields required to make a request.
newUser_Locale ::
  User_Locale
newUser_Locale =
  User_Locale
    { country = Core.Nothing,
      language = Core.Nothing,
      variant = Core.Nothing
    }

instance Core.FromJSON User_Locale where
  parseJSON =
    Core.withObject
      "User_Locale"
      ( \o ->
          User_Locale
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "variant")
      )

instance Core.ToJSON User_Locale where
  toJSON User_Locale {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("language" Core..=) Core.<$> language,
            ("variant" Core..=) Core.<$> variant
          ]
      )
