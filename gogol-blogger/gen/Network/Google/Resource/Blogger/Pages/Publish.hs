{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Blogger.Pages.Publish
    (
    -- * REST Resource
      PagesPublishAPI

    -- * Creating a Request
    , pagesPublish
    , PagesPublish

    -- * Request Lenses
    , pagQuotaUser
    , pagPrettyPrint
    , pagUserIp
    , pagBlogId
    , pagPageId
    , pagKey
    , pagOauthToken
    , pagFields
    , pagAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesPublish@ which the
-- 'PagesPublish' request conforms to.
type PagesPublishAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             "publish" :> Post '[JSON] Page

-- | Publishes a draft page.
--
-- /See:/ 'pagesPublish' smart constructor.
data PagesPublish = PagesPublish
    { _pagQuotaUser   :: !(Maybe Text)
    , _pagPrettyPrint :: !Bool
    , _pagUserIp      :: !(Maybe Text)
    , _pagBlogId      :: !Text
    , _pagPageId      :: !Text
    , _pagKey         :: !(Maybe Text)
    , _pagOauthToken  :: !(Maybe Text)
    , _pagFields      :: !(Maybe Text)
    , _pagAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagQuotaUser'
--
-- * 'pagPrettyPrint'
--
-- * 'pagUserIp'
--
-- * 'pagBlogId'
--
-- * 'pagPageId'
--
-- * 'pagKey'
--
-- * 'pagOauthToken'
--
-- * 'pagFields'
--
-- * 'pagAlt'
pagesPublish
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesPublish
pagesPublish pPagBlogId_ pPagPageId_ =
    PagesPublish
    { _pagQuotaUser = Nothing
    , _pagPrettyPrint = True
    , _pagUserIp = Nothing
    , _pagBlogId = pPagBlogId_
    , _pagPageId = pPagPageId_
    , _pagKey = Nothing
    , _pagOauthToken = Nothing
    , _pagFields = Nothing
    , _pagAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pagQuotaUser :: Lens' PagesPublish' (Maybe Text)
pagQuotaUser
  = lens _pagQuotaUser (\ s a -> s{_pagQuotaUser = a})

-- | Returns response with indentations and line breaks.
pagPrettyPrint :: Lens' PagesPublish' Bool
pagPrettyPrint
  = lens _pagPrettyPrint
      (\ s a -> s{_pagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pagUserIp :: Lens' PagesPublish' (Maybe Text)
pagUserIp
  = lens _pagUserIp (\ s a -> s{_pagUserIp = a})

-- | The ID of the blog.
pagBlogId :: Lens' PagesPublish' Text
pagBlogId
  = lens _pagBlogId (\ s a -> s{_pagBlogId = a})

-- | The ID of the page.
pagPageId :: Lens' PagesPublish' Text
pagPageId
  = lens _pagPageId (\ s a -> s{_pagPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pagKey :: Lens' PagesPublish' (Maybe Text)
pagKey = lens _pagKey (\ s a -> s{_pagKey = a})

-- | OAuth 2.0 token for the current user.
pagOauthToken :: Lens' PagesPublish' (Maybe Text)
pagOauthToken
  = lens _pagOauthToken
      (\ s a -> s{_pagOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pagFields :: Lens' PagesPublish' (Maybe Text)
pagFields
  = lens _pagFields (\ s a -> s{_pagFields = a})

-- | Data format for the response.
pagAlt :: Lens' PagesPublish' Text
pagAlt = lens _pagAlt (\ s a -> s{_pagAlt = a})

instance GoogleRequest PagesPublish' where
        type Rs PagesPublish' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesPublish{..}
          = go _pagQuotaUser _pagPrettyPrint _pagUserIp
              _pagBlogId
              _pagPageId
              _pagKey
              _pagOauthToken
              _pagFields
              _pagAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PagesPublishAPI) r
                      u
