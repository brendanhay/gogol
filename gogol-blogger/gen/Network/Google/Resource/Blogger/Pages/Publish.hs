{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Pages.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publishes a draft page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesPublish@.
module Network.Google.Resource.Blogger.Pages.Publish
    (
    -- * REST Resource
      PagesPublishResource

    -- * Creating a Request
    , pagesPublish'
    , PagesPublish'

    -- * Request Lenses
    , pppQuotaUser
    , pppPrettyPrint
    , pppUserIp
    , pppBlogId
    , pppPageId
    , pppKey
    , pppOauthToken
    , pppFields
    , pppAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesPublish@ which the
-- 'PagesPublish'' request conforms to.
type PagesPublishResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             "publish" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Page

-- | Publishes a draft page.
--
-- /See:/ 'pagesPublish'' smart constructor.
data PagesPublish' = PagesPublish'
    { _pppQuotaUser   :: !(Maybe Text)
    , _pppPrettyPrint :: !Bool
    , _pppUserIp      :: !(Maybe Text)
    , _pppBlogId      :: !Text
    , _pppPageId      :: !Text
    , _pppKey         :: !(Maybe Text)
    , _pppOauthToken  :: !(Maybe Text)
    , _pppFields      :: !(Maybe Text)
    , _pppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppQuotaUser'
--
-- * 'pppPrettyPrint'
--
-- * 'pppUserIp'
--
-- * 'pppBlogId'
--
-- * 'pppPageId'
--
-- * 'pppKey'
--
-- * 'pppOauthToken'
--
-- * 'pppFields'
--
-- * 'pppAlt'
pagesPublish'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesPublish'
pagesPublish' pPppBlogId_ pPppPageId_ =
    PagesPublish'
    { _pppQuotaUser = Nothing
    , _pppPrettyPrint = True
    , _pppUserIp = Nothing
    , _pppBlogId = pPppBlogId_
    , _pppPageId = pPppPageId_
    , _pppKey = Nothing
    , _pppOauthToken = Nothing
    , _pppFields = Nothing
    , _pppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pppQuotaUser :: Lens' PagesPublish' (Maybe Text)
pppQuotaUser
  = lens _pppQuotaUser (\ s a -> s{_pppQuotaUser = a})

-- | Returns response with indentations and line breaks.
pppPrettyPrint :: Lens' PagesPublish' Bool
pppPrettyPrint
  = lens _pppPrettyPrint
      (\ s a -> s{_pppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pppUserIp :: Lens' PagesPublish' (Maybe Text)
pppUserIp
  = lens _pppUserIp (\ s a -> s{_pppUserIp = a})

-- | The ID of the blog.
pppBlogId :: Lens' PagesPublish' Text
pppBlogId
  = lens _pppBlogId (\ s a -> s{_pppBlogId = a})

-- | The ID of the page.
pppPageId :: Lens' PagesPublish' Text
pppPageId
  = lens _pppPageId (\ s a -> s{_pppPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pppKey :: Lens' PagesPublish' (Maybe Text)
pppKey = lens _pppKey (\ s a -> s{_pppKey = a})

-- | OAuth 2.0 token for the current user.
pppOauthToken :: Lens' PagesPublish' (Maybe Text)
pppOauthToken
  = lens _pppOauthToken
      (\ s a -> s{_pppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pppFields :: Lens' PagesPublish' (Maybe Text)
pppFields
  = lens _pppFields (\ s a -> s{_pppFields = a})

-- | Data format for the response.
pppAlt :: Lens' PagesPublish' Alt
pppAlt = lens _pppAlt (\ s a -> s{_pppAlt = a})

instance GoogleRequest PagesPublish' where
        type Rs PagesPublish' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesPublish'{..}
          = go _pppQuotaUser (Just _pppPrettyPrint) _pppUserIp
              _pppBlogId
              _pppPageId
              _pppKey
              _pppOauthToken
              _pppFields
              (Just _pppAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PagesPublishResource)
                      r
                      u
