{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    , pppUserIP
    , pppBlogId
    , pppPageId
    , pppKey
    , pppOAuthToken
    , pppFields
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
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Page

-- | Publishes a draft page.
--
-- /See:/ 'pagesPublish'' smart constructor.
data PagesPublish' = PagesPublish'
    { _pppQuotaUser   :: !(Maybe Text)
    , _pppPrettyPrint :: !Bool
    , _pppUserIP      :: !(Maybe Text)
    , _pppBlogId      :: !Text
    , _pppPageId      :: !Text
    , _pppKey         :: !(Maybe Key)
    , _pppOAuthToken  :: !(Maybe OAuthToken)
    , _pppFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppQuotaUser'
--
-- * 'pppPrettyPrint'
--
-- * 'pppUserIP'
--
-- * 'pppBlogId'
--
-- * 'pppPageId'
--
-- * 'pppKey'
--
-- * 'pppOAuthToken'
--
-- * 'pppFields'
pagesPublish'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesPublish'
pagesPublish' pPppBlogId_ pPppPageId_ =
    PagesPublish'
    { _pppQuotaUser = Nothing
    , _pppPrettyPrint = True
    , _pppUserIP = Nothing
    , _pppBlogId = pPppBlogId_
    , _pppPageId = pPppPageId_
    , _pppKey = Nothing
    , _pppOAuthToken = Nothing
    , _pppFields = Nothing
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
pppUserIP :: Lens' PagesPublish' (Maybe Text)
pppUserIP
  = lens _pppUserIP (\ s a -> s{_pppUserIP = a})

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
pppKey :: Lens' PagesPublish' (Maybe Key)
pppKey = lens _pppKey (\ s a -> s{_pppKey = a})

-- | OAuth 2.0 token for the current user.
pppOAuthToken :: Lens' PagesPublish' (Maybe OAuthToken)
pppOAuthToken
  = lens _pppOAuthToken
      (\ s a -> s{_pppOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pppFields :: Lens' PagesPublish' (Maybe Text)
pppFields
  = lens _pppFields (\ s a -> s{_pppFields = a})

instance GoogleAuth PagesPublish' where
        authKey = pppKey . _Just
        authToken = pppOAuthToken . _Just

instance GoogleRequest PagesPublish' where
        type Rs PagesPublish' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesPublish'{..}
          = go _pppBlogId _pppPageId _pppQuotaUser
              (Just _pppPrettyPrint)
              _pppUserIP
              _pppFields
              _pppKey
              _pppOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PagesPublishResource)
                      r
                      u
