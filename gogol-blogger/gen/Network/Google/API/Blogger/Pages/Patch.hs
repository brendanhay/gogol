{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Pages.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a page. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.patch@.
module Network.Google.API.Blogger.Pages.Patch
    (
    -- * REST Resource
      PagesPatchAPI

    -- * Creating a Request
    , pagesPatch'
    , PagesPatch'

    -- * Request Lenses
    , pppQuotaUser
    , pppPrettyPrint
    , pppUserIp
    , pppBlogId
    , pppPageId
    , pppKey
    , pppRevert
    , pppOauthToken
    , pppPublish
    , pppFields
    , pppAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.pages.patch which the
-- 'PagesPatch'' request conforms to.
type PagesPatchAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "revert" Bool :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "publish" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Patch '[JSON] Page

-- | Update a page. This method supports patch semantics.
--
-- /See:/ 'pagesPatch'' smart constructor.
data PagesPatch' = PagesPatch'
    { _pppQuotaUser   :: !(Maybe Text)
    , _pppPrettyPrint :: !Bool
    , _pppUserIp      :: !(Maybe Text)
    , _pppBlogId      :: !Text
    , _pppPageId      :: !Text
    , _pppKey         :: !(Maybe Text)
    , _pppRevert      :: !(Maybe Bool)
    , _pppOauthToken  :: !(Maybe Text)
    , _pppPublish     :: !(Maybe Bool)
    , _pppFields      :: !(Maybe Text)
    , _pppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPatch'' with the minimum fields required to make a request.
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
-- * 'pppRevert'
--
-- * 'pppOauthToken'
--
-- * 'pppPublish'
--
-- * 'pppFields'
--
-- * 'pppAlt'
pagesPatch'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesPatch'
pagesPatch' pPppBlogId_ pPppPageId_ =
    PagesPatch'
    { _pppQuotaUser = Nothing
    , _pppPrettyPrint = True
    , _pppUserIp = Nothing
    , _pppBlogId = pPppBlogId_
    , _pppPageId = pPppPageId_
    , _pppKey = Nothing
    , _pppRevert = Nothing
    , _pppOauthToken = Nothing
    , _pppPublish = Nothing
    , _pppFields = Nothing
    , _pppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pppQuotaUser :: Lens' PagesPatch' (Maybe Text)
pppQuotaUser
  = lens _pppQuotaUser (\ s a -> s{_pppQuotaUser = a})

-- | Returns response with indentations and line breaks.
pppPrettyPrint :: Lens' PagesPatch' Bool
pppPrettyPrint
  = lens _pppPrettyPrint
      (\ s a -> s{_pppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pppUserIp :: Lens' PagesPatch' (Maybe Text)
pppUserIp
  = lens _pppUserIp (\ s a -> s{_pppUserIp = a})

-- | The ID of the Blog.
pppBlogId :: Lens' PagesPatch' Text
pppBlogId
  = lens _pppBlogId (\ s a -> s{_pppBlogId = a})

-- | The ID of the Page.
pppPageId :: Lens' PagesPatch' Text
pppPageId
  = lens _pppPageId (\ s a -> s{_pppPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pppKey :: Lens' PagesPatch' (Maybe Text)
pppKey = lens _pppKey (\ s a -> s{_pppKey = a})

-- | Whether a revert action should be performed when the page is updated
-- (default: false).
pppRevert :: Lens' PagesPatch' (Maybe Bool)
pppRevert
  = lens _pppRevert (\ s a -> s{_pppRevert = a})

-- | OAuth 2.0 token for the current user.
pppOauthToken :: Lens' PagesPatch' (Maybe Text)
pppOauthToken
  = lens _pppOauthToken
      (\ s a -> s{_pppOauthToken = a})

-- | Whether a publish action should be performed when the page is updated
-- (default: false).
pppPublish :: Lens' PagesPatch' (Maybe Bool)
pppPublish
  = lens _pppPublish (\ s a -> s{_pppPublish = a})

-- | Selector specifying which fields to include in a partial response.
pppFields :: Lens' PagesPatch' (Maybe Text)
pppFields
  = lens _pppFields (\ s a -> s{_pppFields = a})

-- | Data format for the response.
pppAlt :: Lens' PagesPatch' Alt
pppAlt = lens _pppAlt (\ s a -> s{_pppAlt = a})

instance GoogleRequest PagesPatch' where
        type Rs PagesPatch' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesPatch'{..}
          = go _pppQuotaUser (Just _pppPrettyPrint) _pppUserIp
              _pppBlogId
              _pppPageId
              _pppKey
              _pppRevert
              _pppOauthToken
              _pppPublish
              _pppFields
              (Just _pppAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PagesPatchAPI) r u
