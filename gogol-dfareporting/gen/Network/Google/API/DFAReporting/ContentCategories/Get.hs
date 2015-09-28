{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.ContentCategories.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one content category by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.contentCategories.get@.
module Network.Google.API.DFAReporting.ContentCategories.Get
    (
    -- * REST Resource
      ContentCategoriesGetAPI

    -- * Creating a Request
    , contentCategoriesGet'
    , ContentCategoriesGet'

    -- * Request Lenses
    , ccgQuotaUser
    , ccgPrettyPrint
    , ccgUserIp
    , ccgProfileId
    , ccgKey
    , ccgId
    , ccgOauthToken
    , ccgFields
    , ccgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.contentCategories.get which the
-- 'ContentCategoriesGet'' request conforms to.
type ContentCategoriesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ContentCategory

-- | Gets one content category by ID.
--
-- /See:/ 'contentCategoriesGet'' smart constructor.
data ContentCategoriesGet' = ContentCategoriesGet'
    { _ccgQuotaUser   :: !(Maybe Text)
    , _ccgPrettyPrint :: !Bool
    , _ccgUserIp      :: !(Maybe Text)
    , _ccgProfileId   :: !Int64
    , _ccgKey         :: !(Maybe Text)
    , _ccgId          :: !Int64
    , _ccgOauthToken  :: !(Maybe Text)
    , _ccgFields      :: !(Maybe Text)
    , _ccgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccgQuotaUser'
--
-- * 'ccgPrettyPrint'
--
-- * 'ccgUserIp'
--
-- * 'ccgProfileId'
--
-- * 'ccgKey'
--
-- * 'ccgId'
--
-- * 'ccgOauthToken'
--
-- * 'ccgFields'
--
-- * 'ccgAlt'
contentCategoriesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ContentCategoriesGet'
contentCategoriesGet' pCcgProfileId_ pCcgId_ =
    ContentCategoriesGet'
    { _ccgQuotaUser = Nothing
    , _ccgPrettyPrint = True
    , _ccgUserIp = Nothing
    , _ccgProfileId = pCcgProfileId_
    , _ccgKey = Nothing
    , _ccgId = pCcgId_
    , _ccgOauthToken = Nothing
    , _ccgFields = Nothing
    , _ccgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccgQuotaUser :: Lens' ContentCategoriesGet' (Maybe Text)
ccgQuotaUser
  = lens _ccgQuotaUser (\ s a -> s{_ccgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccgPrettyPrint :: Lens' ContentCategoriesGet' Bool
ccgPrettyPrint
  = lens _ccgPrettyPrint
      (\ s a -> s{_ccgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccgUserIp :: Lens' ContentCategoriesGet' (Maybe Text)
ccgUserIp
  = lens _ccgUserIp (\ s a -> s{_ccgUserIp = a})

-- | User profile ID associated with this request.
ccgProfileId :: Lens' ContentCategoriesGet' Int64
ccgProfileId
  = lens _ccgProfileId (\ s a -> s{_ccgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccgKey :: Lens' ContentCategoriesGet' (Maybe Text)
ccgKey = lens _ccgKey (\ s a -> s{_ccgKey = a})

-- | Content category ID.
ccgId :: Lens' ContentCategoriesGet' Int64
ccgId = lens _ccgId (\ s a -> s{_ccgId = a})

-- | OAuth 2.0 token for the current user.
ccgOauthToken :: Lens' ContentCategoriesGet' (Maybe Text)
ccgOauthToken
  = lens _ccgOauthToken
      (\ s a -> s{_ccgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccgFields :: Lens' ContentCategoriesGet' (Maybe Text)
ccgFields
  = lens _ccgFields (\ s a -> s{_ccgFields = a})

-- | Data format for the response.
ccgAlt :: Lens' ContentCategoriesGet' Alt
ccgAlt = lens _ccgAlt (\ s a -> s{_ccgAlt = a})

instance GoogleRequest ContentCategoriesGet' where
        type Rs ContentCategoriesGet' = ContentCategory
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesGet'{..}
          = go _ccgQuotaUser (Just _ccgPrettyPrint) _ccgUserIp
              _ccgProfileId
              _ccgKey
              _ccgId
              _ccgOauthToken
              _ccgFields
              (Just _ccgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesGetAPI)
                      r
                      u
