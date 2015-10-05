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
-- Module      : Network.Google.Resource.DFAReporting.ConnectionTypes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of connection types.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingConnectionTypesList@.
module Network.Google.Resource.DFAReporting.ConnectionTypes.List
    (
    -- * REST Resource
      ConnectionTypesListResource

    -- * Creating a Request
    , connectionTypesList'
    , ConnectionTypesList'

    -- * Request Lenses
    , ctlQuotaUser
    , ctlPrettyPrint
    , ctlUserIP
    , ctlProFileId
    , ctlKey
    , ctlOAuthToken
    , ctlFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingConnectionTypesList@ which the
-- 'ConnectionTypesList'' request conforms to.
type ConnectionTypesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "connectionTypes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ConnectionTypesListResponse

-- | Retrieves a list of connection types.
--
-- /See:/ 'connectionTypesList'' smart constructor.
data ConnectionTypesList' = ConnectionTypesList'
    { _ctlQuotaUser   :: !(Maybe Text)
    , _ctlPrettyPrint :: !Bool
    , _ctlUserIP      :: !(Maybe Text)
    , _ctlProFileId   :: !Int64
    , _ctlKey         :: !(Maybe AuthKey)
    , _ctlOAuthToken  :: !(Maybe OAuthToken)
    , _ctlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConnectionTypesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlQuotaUser'
--
-- * 'ctlPrettyPrint'
--
-- * 'ctlUserIP'
--
-- * 'ctlProFileId'
--
-- * 'ctlKey'
--
-- * 'ctlOAuthToken'
--
-- * 'ctlFields'
connectionTypesList'
    :: Int64 -- ^ 'profileId'
    -> ConnectionTypesList'
connectionTypesList' pCtlProFileId_ =
    ConnectionTypesList'
    { _ctlQuotaUser = Nothing
    , _ctlPrettyPrint = True
    , _ctlUserIP = Nothing
    , _ctlProFileId = pCtlProFileId_
    , _ctlKey = Nothing
    , _ctlOAuthToken = Nothing
    , _ctlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ctlQuotaUser :: Lens' ConnectionTypesList' (Maybe Text)
ctlQuotaUser
  = lens _ctlQuotaUser (\ s a -> s{_ctlQuotaUser = a})

-- | Returns response with indentations and line breaks.
ctlPrettyPrint :: Lens' ConnectionTypesList' Bool
ctlPrettyPrint
  = lens _ctlPrettyPrint
      (\ s a -> s{_ctlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctlUserIP :: Lens' ConnectionTypesList' (Maybe Text)
ctlUserIP
  = lens _ctlUserIP (\ s a -> s{_ctlUserIP = a})

-- | User profile ID associated with this request.
ctlProFileId :: Lens' ConnectionTypesList' Int64
ctlProFileId
  = lens _ctlProFileId (\ s a -> s{_ctlProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctlKey :: Lens' ConnectionTypesList' (Maybe AuthKey)
ctlKey = lens _ctlKey (\ s a -> s{_ctlKey = a})

-- | OAuth 2.0 token for the current user.
ctlOAuthToken :: Lens' ConnectionTypesList' (Maybe OAuthToken)
ctlOAuthToken
  = lens _ctlOAuthToken
      (\ s a -> s{_ctlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctlFields :: Lens' ConnectionTypesList' (Maybe Text)
ctlFields
  = lens _ctlFields (\ s a -> s{_ctlFields = a})

instance GoogleAuth ConnectionTypesList' where
        authKey = ctlKey . _Just
        authToken = ctlOAuthToken . _Just

instance GoogleRequest ConnectionTypesList' where
        type Rs ConnectionTypesList' =
             ConnectionTypesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ConnectionTypesList'{..}
          = go _ctlProFileId _ctlQuotaUser
              (Just _ctlPrettyPrint)
              _ctlUserIP
              _ctlFields
              _ctlKey
              _ctlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ConnectionTypesListResource)
                      r
                      u
