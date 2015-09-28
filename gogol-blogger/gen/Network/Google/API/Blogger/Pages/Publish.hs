{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Pages.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publishes a draft page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.publish@.
module Network.Google.API.Blogger.Pages.Publish
    (
    -- * REST Resource
      PagesPublishAPI

    -- * Creating a Request
    , pagesPublish'
    , PagesPublish'

    -- * Request Lenses
    , pp1QuotaUser
    , pp1PrettyPrint
    , pp1UserIp
    , pp1BlogId
    , pp1PageId
    , pp1Key
    , pp1OauthToken
    , pp1Fields
    , pp1Alt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.pages.publish which the
-- 'PagesPublish'' request conforms to.
type PagesPublishAPI =
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
    { _pp1QuotaUser   :: !(Maybe Text)
    , _pp1PrettyPrint :: !Bool
    , _pp1UserIp      :: !(Maybe Text)
    , _pp1BlogId      :: !Text
    , _pp1PageId      :: !Text
    , _pp1Key         :: !(Maybe Text)
    , _pp1OauthToken  :: !(Maybe Text)
    , _pp1Fields      :: !(Maybe Text)
    , _pp1Alt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pp1QuotaUser'
--
-- * 'pp1PrettyPrint'
--
-- * 'pp1UserIp'
--
-- * 'pp1BlogId'
--
-- * 'pp1PageId'
--
-- * 'pp1Key'
--
-- * 'pp1OauthToken'
--
-- * 'pp1Fields'
--
-- * 'pp1Alt'
pagesPublish'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesPublish'
pagesPublish' pPp1BlogId_ pPp1PageId_ =
    PagesPublish'
    { _pp1QuotaUser = Nothing
    , _pp1PrettyPrint = True
    , _pp1UserIp = Nothing
    , _pp1BlogId = pPp1BlogId_
    , _pp1PageId = pPp1PageId_
    , _pp1Key = Nothing
    , _pp1OauthToken = Nothing
    , _pp1Fields = Nothing
    , _pp1Alt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pp1QuotaUser :: Lens' PagesPublish' (Maybe Text)
pp1QuotaUser
  = lens _pp1QuotaUser (\ s a -> s{_pp1QuotaUser = a})

-- | Returns response with indentations and line breaks.
pp1PrettyPrint :: Lens' PagesPublish' Bool
pp1PrettyPrint
  = lens _pp1PrettyPrint
      (\ s a -> s{_pp1PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pp1UserIp :: Lens' PagesPublish' (Maybe Text)
pp1UserIp
  = lens _pp1UserIp (\ s a -> s{_pp1UserIp = a})

-- | The ID of the blog.
pp1BlogId :: Lens' PagesPublish' Text
pp1BlogId
  = lens _pp1BlogId (\ s a -> s{_pp1BlogId = a})

-- | The ID of the page.
pp1PageId :: Lens' PagesPublish' Text
pp1PageId
  = lens _pp1PageId (\ s a -> s{_pp1PageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pp1Key :: Lens' PagesPublish' (Maybe Text)
pp1Key = lens _pp1Key (\ s a -> s{_pp1Key = a})

-- | OAuth 2.0 token for the current user.
pp1OauthToken :: Lens' PagesPublish' (Maybe Text)
pp1OauthToken
  = lens _pp1OauthToken
      (\ s a -> s{_pp1OauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pp1Fields :: Lens' PagesPublish' (Maybe Text)
pp1Fields
  = lens _pp1Fields (\ s a -> s{_pp1Fields = a})

-- | Data format for the response.
pp1Alt :: Lens' PagesPublish' Alt
pp1Alt = lens _pp1Alt (\ s a -> s{_pp1Alt = a})

instance GoogleRequest PagesPublish' where
        type Rs PagesPublish' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesPublish'{..}
          = go _pp1QuotaUser (Just _pp1PrettyPrint) _pp1UserIp
              _pp1BlogId
              _pp1PageId
              _pp1Key
              _pp1OauthToken
              _pp1Fields
              (Just _pp1Alt)
          where go
                  = clientWithRoute (Proxy :: Proxy PagesPublishAPI) r
                      u
