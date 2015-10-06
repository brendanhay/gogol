{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , pagaUserIP
    , pagaBlogId
    , pagaPageId
    , pagaPayload
    , pagaKey
    , pagaRevert
    , pagaOAuthToken
    , pagaPublish
    , pagaFields
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
             QueryParam "revert" Bool :>
               QueryParam "publish" Bool :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Page :> Patch '[JSON] Page

-- | Update a page. This method supports patch semantics.
--
-- /See:/ 'pagesPatch'' smart constructor.
data PagesPatch' = PagesPatch'
    { _pagaQuotaUser   :: !(Maybe Text)
    , _pagaPrettyPrint :: !Bool
    , _pagaUserIP      :: !(Maybe Text)
    , _pagaBlogId      :: !Text
    , _pagaPageId      :: !Text
    , _pagaPayload     :: !Page
    , _pagaKey         :: !(Maybe AuthKey)
    , _pagaRevert      :: !(Maybe Bool)
    , _pagaOAuthToken  :: !(Maybe OAuthToken)
    , _pagaPublish     :: !(Maybe Bool)
    , _pagaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagaQuotaUser'
--
-- * 'pagaPrettyPrint'
--
-- * 'pagaUserIP'
--
-- * 'pagaBlogId'
--
-- * 'pagaPageId'
--
-- * 'pagaPayload'
--
-- * 'pagaKey'
--
-- * 'pagaRevert'
--
-- * 'pagaOAuthToken'
--
-- * 'pagaPublish'
--
-- * 'pagaFields'
pagesPatch'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> Page -- ^ 'payload'
    -> PagesPatch'
pagesPatch' pPagaBlogId_ pPagaPageId_ pPagaPayload_ =
    PagesPatch'
    { _pagaQuotaUser = Nothing
    , _pagaPrettyPrint = True
    , _pagaUserIP = Nothing
    , _pagaBlogId = pPagaBlogId_
    , _pagaPageId = pPagaPageId_
    , _pagaPayload = pPagaPayload_
    , _pagaKey = Nothing
    , _pagaRevert = Nothing
    , _pagaOAuthToken = Nothing
    , _pagaPublish = Nothing
    , _pagaFields = Nothing
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
pagaUserIP :: Lens' PagesPatch' (Maybe Text)
pagaUserIP
  = lens _pagaUserIP (\ s a -> s{_pagaUserIP = a})

-- | The ID of the Blog.
pagaBlogId :: Lens' PagesPatch' Text
pagaBlogId
  = lens _pagaBlogId (\ s a -> s{_pagaBlogId = a})

-- | The ID of the Page.
pagaPageId :: Lens' PagesPatch' Text
pagaPageId
  = lens _pagaPageId (\ s a -> s{_pagaPageId = a})

-- | Multipart request metadata.
pagaPayload :: Lens' PagesPatch' Page
pagaPayload
  = lens _pagaPayload (\ s a -> s{_pagaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pagaKey :: Lens' PagesPatch' (Maybe AuthKey)
pagaKey = lens _pagaKey (\ s a -> s{_pagaKey = a})

-- | Whether a revert action should be performed when the page is updated
-- (default: false).
pagaRevert :: Lens' PagesPatch' (Maybe Bool)
pagaRevert
  = lens _pagaRevert (\ s a -> s{_pagaRevert = a})

-- | OAuth 2.0 token for the current user.
pagaOAuthToken :: Lens' PagesPatch' (Maybe OAuthToken)
pagaOAuthToken
  = lens _pagaOAuthToken
      (\ s a -> s{_pagaOAuthToken = a})

-- | Whether a publish action should be performed when the page is updated
-- (default: false).
pagaPublish :: Lens' PagesPatch' (Maybe Bool)
pagaPublish
  = lens _pagaPublish (\ s a -> s{_pagaPublish = a})

-- | Selector specifying which fields to include in a partial response.
pagaFields :: Lens' PagesPatch' (Maybe Text)
pagaFields
  = lens _pagaFields (\ s a -> s{_pagaFields = a})

instance GoogleAuth PagesPatch' where
        _AuthKey = pagaKey . _Just
        _AuthToken = pagaOAuthToken . _Just

instance GoogleRequest PagesPatch' where
        type Rs PagesPatch' = Page
        request = requestWith bloggerRequest
        requestWith rq PagesPatch'{..}
          = go _pagaBlogId _pagaPageId _pagaRevert _pagaPublish
              _pagaQuotaUser
              (Just _pagaPrettyPrint)
              _pagaUserIP
              _pagaFields
              _pagaKey
              _pagaOAuthToken
              (Just AltJSON)
              _pagaPayload
          where go
                  = clientBuild (Proxy :: Proxy PagesPatchResource) rq
