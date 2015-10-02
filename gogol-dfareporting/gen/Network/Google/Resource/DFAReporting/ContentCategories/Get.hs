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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one content category by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingContentCategoriesGet@.
module Network.Google.Resource.DFAReporting.ContentCategories.Get
    (
    -- * REST Resource
      ContentCategoriesGetResource

    -- * Creating a Request
    , contentCategoriesGet'
    , ContentCategoriesGet'

    -- * Request Lenses
    , ccgQuotaUser
    , ccgPrettyPrint
    , ccgUserIP
    , ccgProfileId
    , ccgKey
    , ccgId
    , ccgOAuthToken
    , ccgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesGet@ which the
-- 'ContentCategoriesGet'' request conforms to.
type ContentCategoriesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ContentCategory

-- | Gets one content category by ID.
--
-- /See:/ 'contentCategoriesGet'' smart constructor.
data ContentCategoriesGet' = ContentCategoriesGet'
    { _ccgQuotaUser   :: !(Maybe Text)
    , _ccgPrettyPrint :: !Bool
    , _ccgUserIP      :: !(Maybe Text)
    , _ccgProfileId   :: !Int64
    , _ccgKey         :: !(Maybe Key)
    , _ccgId          :: !Int64
    , _ccgOAuthToken  :: !(Maybe OAuthToken)
    , _ccgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccgQuotaUser'
--
-- * 'ccgPrettyPrint'
--
-- * 'ccgUserIP'
--
-- * 'ccgProfileId'
--
-- * 'ccgKey'
--
-- * 'ccgId'
--
-- * 'ccgOAuthToken'
--
-- * 'ccgFields'
contentCategoriesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ContentCategoriesGet'
contentCategoriesGet' pCcgProfileId_ pCcgId_ =
    ContentCategoriesGet'
    { _ccgQuotaUser = Nothing
    , _ccgPrettyPrint = True
    , _ccgUserIP = Nothing
    , _ccgProfileId = pCcgProfileId_
    , _ccgKey = Nothing
    , _ccgId = pCcgId_
    , _ccgOAuthToken = Nothing
    , _ccgFields = Nothing
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
ccgUserIP :: Lens' ContentCategoriesGet' (Maybe Text)
ccgUserIP
  = lens _ccgUserIP (\ s a -> s{_ccgUserIP = a})

-- | User profile ID associated with this request.
ccgProfileId :: Lens' ContentCategoriesGet' Int64
ccgProfileId
  = lens _ccgProfileId (\ s a -> s{_ccgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccgKey :: Lens' ContentCategoriesGet' (Maybe Key)
ccgKey = lens _ccgKey (\ s a -> s{_ccgKey = a})

-- | Content category ID.
ccgId :: Lens' ContentCategoriesGet' Int64
ccgId = lens _ccgId (\ s a -> s{_ccgId = a})

-- | OAuth 2.0 token for the current user.
ccgOAuthToken :: Lens' ContentCategoriesGet' (Maybe OAuthToken)
ccgOAuthToken
  = lens _ccgOAuthToken
      (\ s a -> s{_ccgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccgFields :: Lens' ContentCategoriesGet' (Maybe Text)
ccgFields
  = lens _ccgFields (\ s a -> s{_ccgFields = a})

instance GoogleAuth ContentCategoriesGet' where
        authKey = ccgKey . _Just
        authToken = ccgOAuthToken . _Just

instance GoogleRequest ContentCategoriesGet' where
        type Rs ContentCategoriesGet' = ContentCategory
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesGet'{..}
          = go _ccgQuotaUser (Just _ccgPrettyPrint) _ccgUserIP
              _ccgProfileId
              _ccgKey
              _ccgId
              _ccgOAuthToken
              _ccgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesGetResource)
                      r
                      u
