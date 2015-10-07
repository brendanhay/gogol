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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementFiltersDelete@.
module Network.Google.Resource.Analytics.Management.Filters.Delete
    (
    -- * REST Resource
      ManagementFiltersDeleteResource

    -- * Creating a Request
    , managementFiltersDelete'
    , ManagementFiltersDelete'

    -- * Request Lenses
    , mfdQuotaUser
    , mfdPrettyPrint
    , mfdFilterId
    , mfdUserIP
    , mfdAccountId
    , mfdKey
    , mfdOAuthToken
    , mfdFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersDelete@ method which the
-- 'ManagementFiltersDelete'' request conforms to.
type ManagementFiltersDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             Capture "filterId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Filter

-- | Delete a filter.
--
-- /See:/ 'managementFiltersDelete'' smart constructor.
data ManagementFiltersDelete' = ManagementFiltersDelete'
    { _mfdQuotaUser   :: !(Maybe Text)
    , _mfdPrettyPrint :: !Bool
    , _mfdFilterId    :: !Text
    , _mfdUserIP      :: !(Maybe Text)
    , _mfdAccountId   :: !Text
    , _mfdKey         :: !(Maybe AuthKey)
    , _mfdOAuthToken  :: !(Maybe OAuthToken)
    , _mfdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfdQuotaUser'
--
-- * 'mfdPrettyPrint'
--
-- * 'mfdFilterId'
--
-- * 'mfdUserIP'
--
-- * 'mfdAccountId'
--
-- * 'mfdKey'
--
-- * 'mfdOAuthToken'
--
-- * 'mfdFields'
managementFiltersDelete'
    :: Text -- ^ 'filterId'
    -> Text -- ^ 'accountId'
    -> ManagementFiltersDelete'
managementFiltersDelete' pMfdFilterId_ pMfdAccountId_ =
    ManagementFiltersDelete'
    { _mfdQuotaUser = Nothing
    , _mfdPrettyPrint = False
    , _mfdFilterId = pMfdFilterId_
    , _mfdUserIP = Nothing
    , _mfdAccountId = pMfdAccountId_
    , _mfdKey = Nothing
    , _mfdOAuthToken = Nothing
    , _mfdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mfdQuotaUser :: Lens' ManagementFiltersDelete' (Maybe Text)
mfdQuotaUser
  = lens _mfdQuotaUser (\ s a -> s{_mfdQuotaUser = a})

-- | Returns response with indentations and line breaks.
mfdPrettyPrint :: Lens' ManagementFiltersDelete' Bool
mfdPrettyPrint
  = lens _mfdPrettyPrint
      (\ s a -> s{_mfdPrettyPrint = a})

-- | ID of the filter to be deleted.
mfdFilterId :: Lens' ManagementFiltersDelete' Text
mfdFilterId
  = lens _mfdFilterId (\ s a -> s{_mfdFilterId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mfdUserIP :: Lens' ManagementFiltersDelete' (Maybe Text)
mfdUserIP
  = lens _mfdUserIP (\ s a -> s{_mfdUserIP = a})

-- | Account ID to delete the filter for.
mfdAccountId :: Lens' ManagementFiltersDelete' Text
mfdAccountId
  = lens _mfdAccountId (\ s a -> s{_mfdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfdKey :: Lens' ManagementFiltersDelete' (Maybe AuthKey)
mfdKey = lens _mfdKey (\ s a -> s{_mfdKey = a})

-- | OAuth 2.0 token for the current user.
mfdOAuthToken :: Lens' ManagementFiltersDelete' (Maybe OAuthToken)
mfdOAuthToken
  = lens _mfdOAuthToken
      (\ s a -> s{_mfdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfdFields :: Lens' ManagementFiltersDelete' (Maybe Text)
mfdFields
  = lens _mfdFields (\ s a -> s{_mfdFields = a})

instance GoogleAuth ManagementFiltersDelete' where
        _AuthKey = mfdKey . _Just
        _AuthToken = mfdOAuthToken . _Just

instance GoogleRequest ManagementFiltersDelete' where
        type Rs ManagementFiltersDelete' = Filter
        request = requestWith analyticsRequest
        requestWith rq ManagementFiltersDelete'{..}
          = go _mfdAccountId _mfdFilterId _mfdQuotaUser
              (Just _mfdPrettyPrint)
              _mfdUserIP
              _mfdFields
              _mfdKey
              _mfdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementFiltersDeleteResource)
                      rq
