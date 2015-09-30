{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Blogger.Pages.Update
    (
    -- * REST Resource
      PagesUpdateAPI

    -- * Creating a Request
    , pagesUpdate
    , PagesUpdate

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puUserIp
    , puBlogId
    , puPageId
    , puKey
    , puRevert
    , puOauthToken
    , puPublish
    , puFields
    , puAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesUpdate@ which the
-- 'PagesUpdate' request conforms to.
type PagesUpdateAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "revert" Bool :>
               QueryParam "publish" Bool :> Put '[JSON] Page

-- | Update a page.
--
-- /See:/ 'pagesUpdate' smart constructor.
data PagesUpdate = PagesUpdate
    { _puQuotaUser   :: !(Maybe Text)
    , _puPrettyPrint :: !Bool
    , _puUserIp      :: !(Maybe Text)
    , _puBlogId      :: !Text
    , _puPageId      :: !Text
    , _puKey         :: !(Maybe Text)
    , _puRevert      :: !(Maybe Bool)
    , _puOauthToken  :: !(Maybe Text)
    , _puPublish     :: !(Maybe Bool)
    , _puFields      :: !(Maybe Text)
    , _puAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIp'
--
-- * 'puBlogId'
--
-- * 'puPageId'
--
-- * 'puKey'
--
-- * 'puRevert'
--
-- * 'puOauthToken'
--
-- * 'puPublish'
--
-- * 'puFields'
--
-- * 'puAlt'
pagesUpdate
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesUpdate
pagesUpdate pPuBlogId_ pPuPageId_ =
    PagesUpdate
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIp = Nothing
    , _puBlogId = pPuBlogId_
    , _puPageId = pPuPageId_
    , _puKey = Nothing
    , _puRevert = Nothing
    , _puOauthToken = Nothing
    , _puPublish = Nothing
    , _puFields = Nothing
    , _puAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PagesUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PagesUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIp :: Lens' PagesUpdate' (Maybe Text)
puUserIp = lens _puUserIp (\ s a -> s{_puUserIp = a})

-- | The ID of the Blog.
puBlogId :: Lens' PagesUpdate' Text
puBlogId = lens _puBlogId (\ s a -> s{_puBlogId = a})

-- | The ID of the Page.
puPageId :: Lens' PagesUpdate' Text
puPageId = lens _puPageId (\ s a -> s{_puPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PagesUpdate' (Maybe Text)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | Whether a revert action should be performed when the page is updated
-- (default: false).
puRevert :: Lens' PagesUpdate' (Maybe Bool)
puRevert = lens _puRevert (\ s a -> s{_puRevert = a})

-- | OAuth 2.0 token for the current user.
puOauthToken :: Lens' PagesUpdate' (Maybe Text)
puOauthToken
  = lens _puOauthToken (\ s a -> s{_puOauthToken = a})

-- | Whether a publish action should be performed when the page is updated
-- (default: false).
puPublish :: Lens' PagesUpdate' (Maybe Bool)
puPublish
  = lens _puPublish (\ s a -> s{_puPublish = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PagesUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

-- | Data format for the response.
puAlt :: Lens' PagesUpdate' Text
puAlt = lens _puAlt (\ s a -> s{_puAlt = a})

instance GoogleRequest PagesUpdate' where
        type Rs PagesUpdate' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesUpdate{..}
          = go _puQuotaUser _puPrettyPrint _puUserIp _puBlogId
              _puPageId
              _puKey
              _puRevert
              _puOauthToken
              _puPublish
              _puFields
              _puAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PagesUpdateAPI) r u
