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
module Network.Google.Resource.Blogger.Pages.Patch
    (
    -- * REST Resource
      PagesPatchResource

    -- * Creating a Request
    , pagesPatch'
    , PagesPatch'

    -- * Request Lenses
    , pagaQuotaUser
    , pagaPrettyPrint
    , pagaUserIp
    , pagaBlogId
    , pagaPageId
    , pagaKey
    , pagaRevert
    , pagaOauthToken
    , pagaPublish
    , pagaFields
    , pagaAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesPatch@ which the
-- 'PagesPatch'' request conforms to.
type PagesPatchResource =
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
    { _pagaQuotaUser   :: !(Maybe Text)
    , _pagaPrettyPrint :: !Bool
    , _pagaUserIp      :: !(Maybe Text)
    , _pagaBlogId      :: !Text
    , _pagaPageId      :: !Text
    , _pagaKey         :: !(Maybe Text)
    , _pagaRevert      :: !(Maybe Bool)
    , _pagaOauthToken  :: !(Maybe Text)
    , _pagaPublish     :: !(Maybe Bool)
    , _pagaFields      :: !(Maybe Text)
    , _pagaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagaQuotaUser'
--
-- * 'pagaPrettyPrint'
--
-- * 'pagaUserIp'
--
-- * 'pagaBlogId'
--
-- * 'pagaPageId'
--
-- * 'pagaKey'
--
-- * 'pagaRevert'
--
-- * 'pagaOauthToken'
--
-- * 'pagaPublish'
--
-- * 'pagaFields'
--
-- * 'pagaAlt'
pagesPatch'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesPatch'
pagesPatch' pPagaBlogId_ pPagaPageId_ =
    PagesPatch'
    { _pagaQuotaUser = Nothing
    , _pagaPrettyPrint = True
    , _pagaUserIp = Nothing
    , _pagaBlogId = pPagaBlogId_
    , _pagaPageId = pPagaPageId_
    , _pagaKey = Nothing
    , _pagaRevert = Nothing
    , _pagaOauthToken = Nothing
    , _pagaPublish = Nothing
    , _pagaFields = Nothing
    , _pagaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pagaQuotaUser :: Lens' PagesPatch' (Maybe Text)
pagaQuotaUser
  = lens _pagaQuotaUser
      (\ s a -> s{_pagaQuotaUser = a})

-- | Returns response with indentations and line breaks.
pagaPrettyPrint :: Lens' PagesPatch' Bool
pagaPrettyPrint
  = lens _pagaPrettyPrint
      (\ s a -> s{_pagaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pagaUserIp :: Lens' PagesPatch' (Maybe Text)
pagaUserIp
  = lens _pagaUserIp (\ s a -> s{_pagaUserIp = a})

-- | The ID of the Blog.
pagaBlogId :: Lens' PagesPatch' Text
pagaBlogId
  = lens _pagaBlogId (\ s a -> s{_pagaBlogId = a})

-- | The ID of the Page.
pagaPageId :: Lens' PagesPatch' Text
pagaPageId
  = lens _pagaPageId (\ s a -> s{_pagaPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pagaKey :: Lens' PagesPatch' (Maybe Text)
pagaKey = lens _pagaKey (\ s a -> s{_pagaKey = a})

-- | Whether a revert action should be performed when the page is updated
-- (default: false).
pagaRevert :: Lens' PagesPatch' (Maybe Bool)
pagaRevert
  = lens _pagaRevert (\ s a -> s{_pagaRevert = a})

-- | OAuth 2.0 token for the current user.
pagaOauthToken :: Lens' PagesPatch' (Maybe Text)
pagaOauthToken
  = lens _pagaOauthToken
      (\ s a -> s{_pagaOauthToken = a})

-- | Whether a publish action should be performed when the page is updated
-- (default: false).
pagaPublish :: Lens' PagesPatch' (Maybe Bool)
pagaPublish
  = lens _pagaPublish (\ s a -> s{_pagaPublish = a})

-- | Selector specifying which fields to include in a partial response.
pagaFields :: Lens' PagesPatch' (Maybe Text)
pagaFields
  = lens _pagaFields (\ s a -> s{_pagaFields = a})

-- | Data format for the response.
pagaAlt :: Lens' PagesPatch' Alt
pagaAlt = lens _pagaAlt (\ s a -> s{_pagaAlt = a})

instance GoogleRequest PagesPatch' where
        type Rs PagesPatch' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesPatch'{..}
          = go _pagaQuotaUser (Just _pagaPrettyPrint)
              _pagaUserIp
              _pagaBlogId
              _pagaPageId
              _pagaKey
              _pagaRevert
              _pagaOauthToken
              _pagaPublish
              _pagaFields
              (Just _pagaAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PagesPatchResource)
                      r
                      u
