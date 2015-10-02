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
-- Module      : Network.Google.Resource.Blogger.Pages.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesUpdate@.
module Network.Google.Resource.Blogger.Pages.Update
    (
    -- * REST Resource
      PagesUpdateResource

    -- * Creating a Request
    , pagesUpdate'
    , PagesUpdate'

    -- * Request Lenses
    , puuQuotaUser
    , puuPrettyPrint
    , puuUserIP
    , puuPage
    , puuBlogId
    , puuPageId
    , puuKey
    , puuRevert
    , puuOAuthToken
    , puuPublish
    , puuFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesUpdate@ which the
-- 'PagesUpdate'' request conforms to.
type PagesUpdateResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "revert" Bool :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "publish" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Page :> Put '[JSON] Page

-- | Update a page.
--
-- /See:/ 'pagesUpdate'' smart constructor.
data PagesUpdate' = PagesUpdate'
    { _puuQuotaUser   :: !(Maybe Text)
    , _puuPrettyPrint :: !Bool
    , _puuUserIP      :: !(Maybe Text)
    , _puuPage        :: !Page
    , _puuBlogId      :: !Text
    , _puuPageId      :: !Text
    , _puuKey         :: !(Maybe Key)
    , _puuRevert      :: !(Maybe Bool)
    , _puuOAuthToken  :: !(Maybe OAuthToken)
    , _puuPublish     :: !(Maybe Bool)
    , _puuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puuQuotaUser'
--
-- * 'puuPrettyPrint'
--
-- * 'puuUserIP'
--
-- * 'puuPage'
--
-- * 'puuBlogId'
--
-- * 'puuPageId'
--
-- * 'puuKey'
--
-- * 'puuRevert'
--
-- * 'puuOAuthToken'
--
-- * 'puuPublish'
--
-- * 'puuFields'
pagesUpdate'
    :: Page -- ^ 'Page'
    -> Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesUpdate'
pagesUpdate' pPuuPage_ pPuuBlogId_ pPuuPageId_ =
    PagesUpdate'
    { _puuQuotaUser = Nothing
    , _puuPrettyPrint = True
    , _puuUserIP = Nothing
    , _puuPage = pPuuPage_
    , _puuBlogId = pPuuBlogId_
    , _puuPageId = pPuuPageId_
    , _puuKey = Nothing
    , _puuRevert = Nothing
    , _puuOAuthToken = Nothing
    , _puuPublish = Nothing
    , _puuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puuQuotaUser :: Lens' PagesUpdate' (Maybe Text)
puuQuotaUser
  = lens _puuQuotaUser (\ s a -> s{_puuQuotaUser = a})

-- | Returns response with indentations and line breaks.
puuPrettyPrint :: Lens' PagesUpdate' Bool
puuPrettyPrint
  = lens _puuPrettyPrint
      (\ s a -> s{_puuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puuUserIP :: Lens' PagesUpdate' (Maybe Text)
puuUserIP
  = lens _puuUserIP (\ s a -> s{_puuUserIP = a})

-- | Multipart request metadata.
puuPage :: Lens' PagesUpdate' Page
puuPage = lens _puuPage (\ s a -> s{_puuPage = a})

-- | The ID of the Blog.
puuBlogId :: Lens' PagesUpdate' Text
puuBlogId
  = lens _puuBlogId (\ s a -> s{_puuBlogId = a})

-- | The ID of the Page.
puuPageId :: Lens' PagesUpdate' Text
puuPageId
  = lens _puuPageId (\ s a -> s{_puuPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puuKey :: Lens' PagesUpdate' (Maybe Key)
puuKey = lens _puuKey (\ s a -> s{_puuKey = a})

-- | Whether a revert action should be performed when the page is updated
-- (default: false).
puuRevert :: Lens' PagesUpdate' (Maybe Bool)
puuRevert
  = lens _puuRevert (\ s a -> s{_puuRevert = a})

-- | OAuth 2.0 token for the current user.
puuOAuthToken :: Lens' PagesUpdate' (Maybe OAuthToken)
puuOAuthToken
  = lens _puuOAuthToken
      (\ s a -> s{_puuOAuthToken = a})

-- | Whether a publish action should be performed when the page is updated
-- (default: false).
puuPublish :: Lens' PagesUpdate' (Maybe Bool)
puuPublish
  = lens _puuPublish (\ s a -> s{_puuPublish = a})

-- | Selector specifying which fields to include in a partial response.
puuFields :: Lens' PagesUpdate' (Maybe Text)
puuFields
  = lens _puuFields (\ s a -> s{_puuFields = a})

instance GoogleAuth PagesUpdate' where
        authKey = puuKey . _Just
        authToken = puuOAuthToken . _Just

instance GoogleRequest PagesUpdate' where
        type Rs PagesUpdate' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesUpdate'{..}
          = go _puuQuotaUser (Just _puuPrettyPrint) _puuUserIP
              _puuBlogId
              _puuPageId
              _puuKey
              _puuRevert
              _puuOAuthToken
              _puuPublish
              _puuFields
              (Just AltJSON)
              _puuPage
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PagesUpdateResource)
                      r
                      u
