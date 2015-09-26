{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Blogger
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for access to the data within Blogger.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference>
module Network.Google.Blogger
    (
    -- * Resources
      Blogger
    , PostUserInfosAPI
    , PostUserInfosList
    , PostUserInfosGet
    , UsersAPI
    , UsersGet
    , PageViewsAPI
    , PageViewsGet
    , BlogsAPI
    , BlogsListByUser
    , BlogsGet
    , BlogsGetByUrl
    , PagesAPI
    , PagesInsert
    , PagesList
    , PagesPatch
    , PagesGet
    , PagesRevert
    , PagesDelete
    , PagesUpdate
    , PagesPublish
    , BlogUserInfosAPI
    , BlogUserInfosGet
    , CommentsAPI
    , CommentsList
    , CommentsGet
    , CommentsListByBlog
    , CommentsRemoveContent
    , CommentsApprove
    , CommentsMarkAsSpam
    , CommentsDelete
    , PostsAPI
    , PostsInsert
    , PostsList
    , PostsPatch
    , PostsGet
    , PostsRevert
    , PostsGetByPath
    , PostsSearch
    , PostsDelete
    , PostsUpdate
    , PostsPublish

    -- * Types

    -- ** Blog
    , Blog
    , blog
    , bStatus
    , bKind
    , bPages
    , bLocale
    , bPublished
    , bUrl
    , bCustomMetaData
    , bSelfLink
    , bName
    , bId
    , bUpdated
    , bPosts
    , bDescription

    -- ** BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- ** BlogLocale
    , BlogLocale
    , blogLocale
    , blVariant
    , blCountry
    , blLanguage

    -- ** BlogPages
    , BlogPages
    , blogPages
    , bpsTotalItems
    , bpsSelfLink

    -- ** BlogPerUserInfo
    , BlogPerUserInfo
    , blogPerUserInfo
    , bpuiPhotosAlbumKey
    , bpuiKind
    , bpuiBlogId
    , bpuiUserId
    , bpuiRole
    , bpuiHasAdminAccess

    -- ** BlogPosts
    , BlogPosts
    , blogPosts
    , bpTotalItems
    , bpItems
    , bpSelfLink

    -- ** BlogUserInfo
    , BlogUserInfo
    , blogUserInfo
    , buiKind
    , buiBlog
    , buiBlogUserInfo

    -- ** Comment
    , Comment
    , comment
    , cStatus
    , cPost
    , cKind
    , cPublished
    , cBlog
    , cContent
    , cSelfLink
    , cAuthor
    , cId
    , cUpdated
    , cInReplyTo

    -- ** CommentAuthor
    , CommentAuthor
    , commentAuthor
    , caImage
    , caUrl
    , caDisplayName
    , caId

    -- ** CommentBlog
    , CommentBlog
    , commentBlog
    , cbId

    -- ** CommentImageAuthor
    , CommentImageAuthor
    , commentImageAuthor
    , ciaUrl

    -- ** CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtId

    -- ** CommentList
    , CommentList
    , commentList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clPrevPageToken

    -- ** CommentPost
    , CommentPost
    , commentPost
    , cpId

    -- ** Page
    , Page
    , page
    , pagStatus
    , pagEtag
    , pagKind
    , pagPublished
    , pagUrl
    , pagBlog
    , pagContent
    , pagSelfLink
    , pagAuthor
    , pagId
    , pagUpdated
    , pagTitle

    -- ** PageAuthor
    , PageAuthor
    , pageAuthor
    , paImage
    , paUrl
    , paDisplayName
    , paId

    -- ** PageBlog
    , PageBlog
    , pageBlog
    , pId

    -- ** PageImageAuthor
    , PageImageAuthor
    , pageImageAuthor
    , piaUrl

    -- ** PageList
    , PageList
    , pageList
    , pllEtag
    , pllNextPageToken
    , pllKind
    , pllItems

    -- ** Pageviews
    , Pageviews
    , pageviews
    , pKind
    , pCounts
    , pBlogId

    -- ** PageviewsItemCounts
    , PageviewsItemCounts
    , pageviewsItemCounts
    , picTimeRange
    , picCount

    -- ** Post
    , Post
    , post
    , ppImages
    , ppStatus
    , ppEtag
    , ppReaderComments
    , ppLocation
    , ppKind
    , ppPublished
    , ppUrl
    , ppBlog
    , ppCustomMetaData
    , ppContent
    , ppReplies
    , ppSelfLink
    , ppAuthor
    , ppId
    , ppLabels
    , ppUpdated
    , ppTitleLink
    , ppTitle

    -- ** PostAuthor
    , PostAuthor
    , postAuthor
    , posImage
    , posUrl
    , posDisplayName
    , posId

    -- ** PostBlog
    , PostBlog
    , postBlog
    , pbId

    -- ** PostImageAuthor
    , PostImageAuthor
    , postImageAuthor
    , pUrl

    -- ** PostItemImages
    , PostItemImages
    , postItemImages
    , piiUrl

    -- ** PostList
    , PostList
    , postList
    , plEtag
    , plNextPageToken
    , plKind
    , plItems

    -- ** PostLocation
    , PostLocation
    , postLocation
    , plSpan
    , plLat
    , plName
    , plLng

    -- ** PostPerUserInfo
    , PostPerUserInfo
    , postPerUserInfo
    , ppuiKind
    , ppuiBlogId
    , ppuiUserId
    , ppuiHasEditAccess
    , ppuiPostId

    -- ** PostReplies
    , PostReplies
    , postReplies
    , prTotalItems
    , prItems
    , prSelfLink

    -- ** PostUserInfo
    , PostUserInfo
    , postUserInfo
    , puiPostUserInfo
    , puiPost
    , puiKind

    -- ** PostUserInfosList
    , PostUserInfosList
    , postUserInfosList
    , puilNextPageToken
    , puilKind
    , puilItems

    -- ** User
    , User
    , user
    , uBlogs
    , uKind
    , uCreated
    , uLocale
    , uUrl
    , uSelfLink
    , uAbout
    , uDisplayName
    , uId

    -- ** UserBlogs
    , UserBlogs
    , userBlogs
    , ubSelfLink

    -- ** UserLocale
    , UserLocale
    , userLocale
    , ulVariant
    , ulCountry
    , ulLanguage
    ) where

import           Network.Google.Blogger.Types

{- $resources
TODO
-}

type Blogger =
     UsersAPI :<|>
       PageViewsAPI :<|>
         BlogsAPI :<|>
           PagesAPI :<|>
             BlogUserInfosAPI :<|>
               CommentsAPI :<|> PostsAPI :<|> PostUserInfosAPI

type PostUserInfosAPI =
     PostUserInfosGet :<|> PostUserInfosList

-- | Retrieves a list of post and post user info pairs, possibly filtered.
-- The post user info contains per-user information about the post, such as
-- access rights, specific to the user.
type PostUserInfosList =
     "blogger" :> "v3" :> "users" :> Capture "userId" Text
       :> "blogs"
       :> Capture "blogId" Text
       :> "posts"
       :> QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "endDate" UTCTime
       :> QueryParam "startDate" UTCTime
       :> QueryParam "key" Text
       :> QueryParam "fetchBodies" Bool
       :> QueryParam "view" Text
       :> QueryParam "labels" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one post and user info pair, by post ID and user ID. The post user
-- info contains per-user information about the post, such as access
-- rights, specific to the user.
type PostUserInfosGet =
     "blogger" :> "v3" :> "users" :> Capture "userId" Text
       :> "blogs"
       :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "maxComments" Word32
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UsersAPI = UsersGet

-- | Gets one user by ID.
type UsersGet =
     "blogger" :> "v3" :> "users" :> Capture "userId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PageViewsAPI = PageViewsGet

-- | Retrieve pageview stats for a Blog.
type PageViewsGet =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "pageviews"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "range" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type BlogsAPI =
     BlogsGet :<|> BlogsGetByUrl :<|> BlogsListByUser

-- | Retrieves a list of blogs, possibly filtered.
type BlogsListByUser =
     "blogger" :> "v3" :> "users" :> Capture "userId" Text
       :> "blogs"
       :> QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "fetchUserInfo" Bool
       :> QueryParam "role" Text
       :> QueryParam "key" Text
       :> QueryParam "view" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one blog by ID.
type BlogsGet =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "maxPosts" Word32
       :> QueryParam "view" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieve a Blog by URL.
type BlogsGetByUrl =
     "blogger" :> "v3" :> "blogs" :> "byurl" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "url" Text
       :> QueryParam "key" Text
       :> QueryParam "view" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PagesAPI =
     PagesList :<|>
       PagesPatch :<|>
         PagesGet :<|>
           PagesRevert :<|>
             PagesDelete :<|>
               PagesUpdate :<|> PagesPublish :<|> PagesInsert

-- | Add a page.
type PagesInsert =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "pages"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "isDraft" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the pages for a blog, optionally including non-LIVE statuses.
type PagesList =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "pages"
       :> QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "fetchBodies" Bool
       :> QueryParam "view" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update a page. This method supports patch semantics.
type PagesPatch =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "pages"
       :> Capture "pageId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "revert" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "publish" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one blog page by ID.
type PagesGet =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "pages"
       :> Capture "pageId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "view" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Revert a published or scheduled page to draft state.
type PagesRevert =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "pages"
       :> Capture "pageId" Text
       :> "revert"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a page by ID.
type PagesDelete =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "pages"
       :> Capture "pageId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update a page.
type PagesUpdate =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "pages"
       :> Capture "pageId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "revert" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "publish" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Publishes a draft page.
type PagesPublish =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "pages"
       :> Capture "pageId" Text
       :> "publish"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type BlogUserInfosAPI = BlogUserInfosGet

-- | Gets one blog and user info pair by blogId and userId.
type BlogUserInfosGet =
     "blogger" :> "v3" :> "users" :> Capture "userId" Text
       :> "blogs"
       :> Capture "blogId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "maxPosts" Word32
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CommentsAPI =
     CommentsGet :<|>
       CommentsListByBlog :<|>
         CommentsRemoveContent :<|>
           CommentsApprove :<|>
             CommentsMarkAsSpam :<|>
               CommentsDelete :<|> CommentsList

-- | Retrieves the comments for a post, possibly filtered.
type CommentsList =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> "comments"
       :> QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "endDate" UTCTime
       :> QueryParam "startDate" UTCTime
       :> QueryParam "key" Text
       :> QueryParam "fetchBodies" Bool
       :> QueryParam "view" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one comment by ID.
type CommentsGet =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "view" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the comments for a blog, across all posts, possibly filtered.
type CommentsListByBlog =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "comments"
       :> QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "endDate" UTCTime
       :> QueryParam "startDate" UTCTime
       :> QueryParam "key" Text
       :> QueryParam "fetchBodies" Bool
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes the content of a comment.
type CommentsRemoveContent =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> "removecontent"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Marks a comment as not spam.
type CommentsApprove =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> "approve"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Marks a comment as spam.
type CommentsMarkAsSpam =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> "spam"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a comment by ID.
type CommentsDelete =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PostsAPI =
     PostsList :<|>
       PostsPatch :<|>
         PostsGet :<|>
           PostsRevert :<|>
             PostsGetByPath :<|>
               PostsSearch :<|>
                 PostsDelete :<|>
                   PostsUpdate :<|> PostsPublish :<|> PostsInsert

-- | Add a post.
type PostsInsert =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> QueryParam "fetchBody" Bool
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "isDraft" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "fetchImages" Bool
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of posts, possibly filtered.
type PostsList =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "fetchImages" Bool
       :> QueryParam "endDate" UTCTime
       :> QueryParam "startDate" UTCTime
       :> QueryParam "key" Text
       :> QueryParam "fetchBodies" Bool
       :> QueryParam "view" Text
       :> QueryParam "labels" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update a post. This method supports patch semantics.
type PostsPatch =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> QueryParam "fetchBody" Bool
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "fetchImages" Bool
       :> QueryParam "maxComments" Word32
       :> QueryParam "key" Text
       :> QueryParam "revert" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "publish" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a post by ID.
type PostsGet =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> QueryParam "fetchBody" Bool
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "fetchImages" Bool
       :> QueryParam "maxComments" Word32
       :> QueryParam "key" Text
       :> QueryParam "view" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Revert a published or scheduled post to draft state.
type PostsRevert =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> "revert"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieve a Post by Path.
type PostsGetByPath =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> "bypath"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "path" Text
       :> QueryParam "userIp" Text
       :> QueryParam "maxComments" Word32
       :> QueryParam "key" Text
       :> QueryParam "view" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Search for a post.
type PostsSearch =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> "search"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "q" Text
       :> QueryParam "key" Text
       :> QueryParam "fetchBodies" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a post by ID.
type PostsDelete =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update a post.
type PostsUpdate =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> QueryParam "fetchBody" Bool
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "fetchImages" Bool
       :> QueryParam "maxComments" Word32
       :> QueryParam "key" Text
       :> QueryParam "revert" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "publish" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Publishes a draft post, optionally at the specific time of the given
-- publishDate parameter.
type PostsPublish =
     "blogger" :> "v3" :> "blogs" :> Capture "blogId" Text
       :> "posts"
       :> Capture "postId" Text
       :> "publish"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "publishDate" UTCTime
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
