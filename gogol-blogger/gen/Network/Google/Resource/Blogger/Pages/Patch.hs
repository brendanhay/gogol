{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Pages.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a page. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesPatch@.
module Blogger.Pages.Patch
    (
    -- * REST Resource
      PagesPatchAPI

    -- * Creating a Request
    , pagesPatch
    , PagesPatch

    -- * Request Lenses
    , ppQuotaUser
    , ppPrettyPrint
    , ppUserIp
    , ppBlogId
    , ppPageId
    , ppKey
    , ppRevert
    , ppOauthToken
    , ppPublish
    , ppFields
    , ppAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesPatch@ which the
-- 'PagesPatch' request conforms to.
type PagesPatchAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "revert" Bool :>
               QueryParam "publish" Bool :> Patch '[JSON] Page

-- | Update a page. This method supports patch semantics.
--
-- /See:/ 'pagesPatch' smart constructor.
data PagesPatch = PagesPatch
    { _ppQuotaUser   :: !(Maybe Text)
    , _ppPrettyPrint :: !Bool
    , _ppUserIp      :: !(Maybe Text)
    , _ppBlogId      :: !Text
    , _ppPageId      :: !Text
    , _ppKey         :: !(Maybe Text)
    , _ppRevert      :: !(Maybe Bool)
    , _ppOauthToken  :: !(Maybe Text)
    , _ppPublish     :: !(Maybe Bool)
    , _ppFields      :: !(Maybe Text)
    , _ppAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppQuotaUser'
--
-- * 'ppPrettyPrint'
--
-- * 'ppUserIp'
--
-- * 'ppBlogId'
--
-- * 'ppPageId'
--
-- * 'ppKey'
--
-- * 'ppRevert'
--
-- * 'ppOauthToken'
--
-- * 'ppPublish'
--
-- * 'ppFields'
--
-- * 'ppAlt'
pagesPatch
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesPatch
pagesPatch pPpBlogId_ pPpPageId_ =
    PagesPatch
    { _ppQuotaUser = Nothing
    , _ppPrettyPrint = True
    , _ppUserIp = Nothing
    , _ppBlogId = pPpBlogId_
    , _ppPageId = pPpPageId_
    , _ppKey = Nothing
    , _ppRevert = Nothing
    , _ppOauthToken = Nothing
    , _ppPublish = Nothing
    , _ppFields = Nothing
    , _ppAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ppQuotaUser :: Lens' PagesPatch' (Maybe Text)
ppQuotaUser
  = lens _ppQuotaUser (\ s a -> s{_ppQuotaUser = a})

-- | Returns response with indentations and line breaks.
ppPrettyPrint :: Lens' PagesPatch' Bool
ppPrettyPrint
  = lens _ppPrettyPrint
      (\ s a -> s{_ppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ppUserIp :: Lens' PagesPatch' (Maybe Text)
ppUserIp = lens _ppUserIp (\ s a -> s{_ppUserIp = a})

-- | The ID of the Blog.
ppBlogId :: Lens' PagesPatch' Text
ppBlogId = lens _ppBlogId (\ s a -> s{_ppBlogId = a})

-- | The ID of the Page.
ppPageId :: Lens' PagesPatch' Text
ppPageId = lens _ppPageId (\ s a -> s{_ppPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ppKey :: Lens' PagesPatch' (Maybe Text)
ppKey = lens _ppKey (\ s a -> s{_ppKey = a})

-- | Whether a revert action should be performed when the page is updated
-- (default: false).
ppRevert :: Lens' PagesPatch' (Maybe Bool)
ppRevert = lens _ppRevert (\ s a -> s{_ppRevert = a})

-- | OAuth 2.0 token for the current user.
ppOauthToken :: Lens' PagesPatch' (Maybe Text)
ppOauthToken
  = lens _ppOauthToken (\ s a -> s{_ppOauthToken = a})

-- | Whether a publish action should be performed when the page is updated
-- (default: false).
ppPublish :: Lens' PagesPatch' (Maybe Bool)
ppPublish
  = lens _ppPublish (\ s a -> s{_ppPublish = a})

-- | Selector specifying which fields to include in a partial response.
ppFields :: Lens' PagesPatch' (Maybe Text)
ppFields = lens _ppFields (\ s a -> s{_ppFields = a})

-- | Data format for the response.
ppAlt :: Lens' PagesPatch' Text
ppAlt = lens _ppAlt (\ s a -> s{_ppAlt = a})

instance GoogleRequest PagesPatch' where
        type Rs PagesPatch' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesPatch{..}
          = go _ppQuotaUser _ppPrettyPrint _ppUserIp _ppBlogId
              _ppPageId
              _ppKey
              _ppRevert
              _ppOauthToken
              _ppPublish
              _ppFields
              _ppAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PagesPatchAPI) r u
