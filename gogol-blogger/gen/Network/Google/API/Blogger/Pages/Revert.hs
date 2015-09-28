{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Pages.Revert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revert a published or scheduled page to draft state.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.revert@.
module Network.Google.API.Blogger.Pages.Revert
    (
    -- * REST Resource
      PagesRevertAPI

    -- * Creating a Request
    , pagesRevert'
    , PagesRevert'

    -- * Request Lenses
    , prQuotaUser
    , prPrettyPrint
    , prUserIp
    , prBlogId
    , prPageId
    , prKey
    , prOauthToken
    , prFields
    , prAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.pages.revert which the
-- 'PagesRevert'' request conforms to.
type PagesRevertAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             "revert" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Page

-- | Revert a published or scheduled page to draft state.
--
-- /See:/ 'pagesRevert'' smart constructor.
data PagesRevert' = PagesRevert'
    { _prQuotaUser   :: !(Maybe Text)
    , _prPrettyPrint :: !Bool
    , _prUserIp      :: !(Maybe Text)
    , _prBlogId      :: !Text
    , _prPageId      :: !Text
    , _prKey         :: !(Maybe Text)
    , _prOauthToken  :: !(Maybe Text)
    , _prFields      :: !(Maybe Text)
    , _prAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesRevert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prQuotaUser'
--
-- * 'prPrettyPrint'
--
-- * 'prUserIp'
--
-- * 'prBlogId'
--
-- * 'prPageId'
--
-- * 'prKey'
--
-- * 'prOauthToken'
--
-- * 'prFields'
--
-- * 'prAlt'
pagesRevert'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesRevert'
pagesRevert' pPrBlogId_ pPrPageId_ =
    PagesRevert'
    { _prQuotaUser = Nothing
    , _prPrettyPrint = True
    , _prUserIp = Nothing
    , _prBlogId = pPrBlogId_
    , _prPageId = pPrPageId_
    , _prKey = Nothing
    , _prOauthToken = Nothing
    , _prFields = Nothing
    , _prAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prQuotaUser :: Lens' PagesRevert' (Maybe Text)
prQuotaUser
  = lens _prQuotaUser (\ s a -> s{_prQuotaUser = a})

-- | Returns response with indentations and line breaks.
prPrettyPrint :: Lens' PagesRevert' Bool
prPrettyPrint
  = lens _prPrettyPrint
      (\ s a -> s{_prPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prUserIp :: Lens' PagesRevert' (Maybe Text)
prUserIp = lens _prUserIp (\ s a -> s{_prUserIp = a})

-- | The ID of the blog.
prBlogId :: Lens' PagesRevert' Text
prBlogId = lens _prBlogId (\ s a -> s{_prBlogId = a})

-- | The ID of the page.
prPageId :: Lens' PagesRevert' Text
prPageId = lens _prPageId (\ s a -> s{_prPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prKey :: Lens' PagesRevert' (Maybe Text)
prKey = lens _prKey (\ s a -> s{_prKey = a})

-- | OAuth 2.0 token for the current user.
prOauthToken :: Lens' PagesRevert' (Maybe Text)
prOauthToken
  = lens _prOauthToken (\ s a -> s{_prOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
prFields :: Lens' PagesRevert' (Maybe Text)
prFields = lens _prFields (\ s a -> s{_prFields = a})

-- | Data format for the response.
prAlt :: Lens' PagesRevert' Alt
prAlt = lens _prAlt (\ s a -> s{_prAlt = a})

instance GoogleRequest PagesRevert' where
        type Rs PagesRevert' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesRevert'{..}
          = go _prQuotaUser (Just _prPrettyPrint) _prUserIp
              _prBlogId
              _prPageId
              _prKey
              _prOauthToken
              _prFields
              (Just _prAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PagesRevertAPI) r u
