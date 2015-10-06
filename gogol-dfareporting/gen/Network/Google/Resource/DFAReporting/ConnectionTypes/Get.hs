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
-- Module      : Network.Google.Resource.DFAReporting.ConnectionTypes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one connection type by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingConnectionTypesGet@.
module Network.Google.Resource.DFAReporting.ConnectionTypes.Get
    (
    -- * REST Resource
      ConnectionTypesGetResource

    -- * Creating a Request
    , connectionTypesGet'
    , ConnectionTypesGet'

    -- * Request Lenses
    , ctgQuotaUser
    , ctgPrettyPrint
    , ctgUserIP
    , ctgProFileId
    , ctgKey
    , ctgId
    , ctgOAuthToken
    , ctgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingConnectionTypesGet@ which the
-- 'ConnectionTypesGet'' request conforms to.
type ConnectionTypesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "connectionTypes" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ConnectionType

-- | Gets one connection type by ID.
--
-- /See:/ 'connectionTypesGet'' smart constructor.
data ConnectionTypesGet' = ConnectionTypesGet'
    { _ctgQuotaUser   :: !(Maybe Text)
    , _ctgPrettyPrint :: !Bool
    , _ctgUserIP      :: !(Maybe Text)
    , _ctgProFileId   :: !Int64
    , _ctgKey         :: !(Maybe AuthKey)
    , _ctgId          :: !Int64
    , _ctgOAuthToken  :: !(Maybe OAuthToken)
    , _ctgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConnectionTypesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgQuotaUser'
--
-- * 'ctgPrettyPrint'
--
-- * 'ctgUserIP'
--
-- * 'ctgProFileId'
--
-- * 'ctgKey'
--
-- * 'ctgId'
--
-- * 'ctgOAuthToken'
--
-- * 'ctgFields'
connectionTypesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ConnectionTypesGet'
connectionTypesGet' pCtgProFileId_ pCtgId_ =
    ConnectionTypesGet'
    { _ctgQuotaUser = Nothing
    , _ctgPrettyPrint = True
    , _ctgUserIP = Nothing
    , _ctgProFileId = pCtgProFileId_
    , _ctgKey = Nothing
    , _ctgId = pCtgId_
    , _ctgOAuthToken = Nothing
    , _ctgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ctgQuotaUser :: Lens' ConnectionTypesGet' (Maybe Text)
ctgQuotaUser
  = lens _ctgQuotaUser (\ s a -> s{_ctgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ctgPrettyPrint :: Lens' ConnectionTypesGet' Bool
ctgPrettyPrint
  = lens _ctgPrettyPrint
      (\ s a -> s{_ctgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctgUserIP :: Lens' ConnectionTypesGet' (Maybe Text)
ctgUserIP
  = lens _ctgUserIP (\ s a -> s{_ctgUserIP = a})

-- | User profile ID associated with this request.
ctgProFileId :: Lens' ConnectionTypesGet' Int64
ctgProFileId
  = lens _ctgProFileId (\ s a -> s{_ctgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctgKey :: Lens' ConnectionTypesGet' (Maybe AuthKey)
ctgKey = lens _ctgKey (\ s a -> s{_ctgKey = a})

-- | Connection type ID.
ctgId :: Lens' ConnectionTypesGet' Int64
ctgId = lens _ctgId (\ s a -> s{_ctgId = a})

-- | OAuth 2.0 token for the current user.
ctgOAuthToken :: Lens' ConnectionTypesGet' (Maybe OAuthToken)
ctgOAuthToken
  = lens _ctgOAuthToken
      (\ s a -> s{_ctgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctgFields :: Lens' ConnectionTypesGet' (Maybe Text)
ctgFields
  = lens _ctgFields (\ s a -> s{_ctgFields = a})

instance GoogleAuth ConnectionTypesGet' where
        _AuthKey = ctgKey . _Just
        _AuthToken = ctgOAuthToken . _Just

instance GoogleRequest ConnectionTypesGet' where
        type Rs ConnectionTypesGet' = ConnectionType
        request = requestWith dFAReportingRequest
        requestWith rq ConnectionTypesGet'{..}
          = go _ctgProFileId _ctgId _ctgQuotaUser
              (Just _ctgPrettyPrint)
              _ctgUserIP
              _ctgFields
              _ctgKey
              _ctgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ConnectionTypesGetResource)
                      rq
