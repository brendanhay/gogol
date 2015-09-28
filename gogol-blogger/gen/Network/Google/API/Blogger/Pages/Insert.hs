{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Pages.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.insert@.
module Network.Google.API.Blogger.Pages.Insert
    (
    -- * REST Resource
      PagesInsertAPI

    -- * Creating a Request
    , pagesInsert'
    , PagesInsert'

    -- * Request Lenses
    , piQuotaUser
    , piPrettyPrint
    , piIsDraft
    , piUserIp
    , piBlogId
    , piKey
    , piOauthToken
    , piFields
    , piAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.pages.insert which the
-- 'PagesInsert'' request conforms to.
type PagesInsertAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "isDraft" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Page

-- | Add a page.
--
-- /See:/ 'pagesInsert'' smart constructor.
data PagesInsert' = PagesInsert'
    { _piQuotaUser   :: !(Maybe Text)
    , _piPrettyPrint :: !Bool
    , _piIsDraft     :: !(Maybe Bool)
    , _piUserIp      :: !(Maybe Text)
    , _piBlogId      :: !Text
    , _piKey         :: !(Maybe Text)
    , _piOauthToken  :: !(Maybe Text)
    , _piFields      :: !(Maybe Text)
    , _piAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piPrettyPrint'
--
-- * 'piIsDraft'
--
-- * 'piUserIp'
--
-- * 'piBlogId'
--
-- * 'piKey'
--
-- * 'piOauthToken'
--
-- * 'piFields'
--
-- * 'piAlt'
pagesInsert'
    :: Text -- ^ 'blogId'
    -> PagesInsert'
pagesInsert' pPiBlogId_ =
    PagesInsert'
    { _piQuotaUser = Nothing
    , _piPrettyPrint = True
    , _piIsDraft = Nothing
    , _piUserIp = Nothing
    , _piBlogId = pPiBlogId_
    , _piKey = Nothing
    , _piOauthToken = Nothing
    , _piFields = Nothing
    , _piAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piQuotaUser :: Lens' PagesInsert' (Maybe Text)
piQuotaUser
  = lens _piQuotaUser (\ s a -> s{_piQuotaUser = a})

-- | Returns response with indentations and line breaks.
piPrettyPrint :: Lens' PagesInsert' Bool
piPrettyPrint
  = lens _piPrettyPrint
      (\ s a -> s{_piPrettyPrint = a})

-- | Whether to create the page as a draft (default: false).
piIsDraft :: Lens' PagesInsert' (Maybe Bool)
piIsDraft
  = lens _piIsDraft (\ s a -> s{_piIsDraft = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piUserIp :: Lens' PagesInsert' (Maybe Text)
piUserIp = lens _piUserIp (\ s a -> s{_piUserIp = a})

-- | ID of the blog to add the page to.
piBlogId :: Lens' PagesInsert' Text
piBlogId = lens _piBlogId (\ s a -> s{_piBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' PagesInsert' (Maybe Text)
piKey = lens _piKey (\ s a -> s{_piKey = a})

-- | OAuth 2.0 token for the current user.
piOauthToken :: Lens' PagesInsert' (Maybe Text)
piOauthToken
  = lens _piOauthToken (\ s a -> s{_piOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' PagesInsert' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

-- | Data format for the response.
piAlt :: Lens' PagesInsert' Alt
piAlt = lens _piAlt (\ s a -> s{_piAlt = a})

instance GoogleRequest PagesInsert' where
        type Rs PagesInsert' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesInsert'{..}
          = go _piQuotaUser (Just _piPrettyPrint) _piIsDraft
              _piUserIp
              _piBlogId
              _piKey
              _piOauthToken
              _piFields
              (Just _piAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PagesInsertAPI) r u
