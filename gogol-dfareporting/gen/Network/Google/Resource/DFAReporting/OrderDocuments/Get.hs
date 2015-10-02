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
-- Module      : Network.Google.Resource.DFAReporting.OrderDocuments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one order document by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOrderDocumentsGet@.
module Network.Google.Resource.DFAReporting.OrderDocuments.Get
    (
    -- * REST Resource
      OrderDocumentsGetResource

    -- * Creating a Request
    , orderDocumentsGet'
    , OrderDocumentsGet'

    -- * Request Lenses
    , odgQuotaUser
    , odgPrettyPrint
    , odgUserIP
    , odgProfileId
    , odgKey
    , odgId
    , odgProjectId
    , odgOAuthToken
    , odgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOrderDocumentsGet@ which the
-- 'OrderDocumentsGet'' request conforms to.
type OrderDocumentsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "orderDocuments" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] OrderDocument

-- | Gets one order document by ID.
--
-- /See:/ 'orderDocumentsGet'' smart constructor.
data OrderDocumentsGet' = OrderDocumentsGet'
    { _odgQuotaUser   :: !(Maybe Text)
    , _odgPrettyPrint :: !Bool
    , _odgUserIP      :: !(Maybe Text)
    , _odgProfileId   :: !Int64
    , _odgKey         :: !(Maybe Key)
    , _odgId          :: !Int64
    , _odgProjectId   :: !Int64
    , _odgOAuthToken  :: !(Maybe OAuthToken)
    , _odgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderDocumentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odgQuotaUser'
--
-- * 'odgPrettyPrint'
--
-- * 'odgUserIP'
--
-- * 'odgProfileId'
--
-- * 'odgKey'
--
-- * 'odgId'
--
-- * 'odgProjectId'
--
-- * 'odgOAuthToken'
--
-- * 'odgFields'
orderDocumentsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> Int64 -- ^ 'projectId'
    -> OrderDocumentsGet'
orderDocumentsGet' pOdgProfileId_ pOdgId_ pOdgProjectId_ =
    OrderDocumentsGet'
    { _odgQuotaUser = Nothing
    , _odgPrettyPrint = True
    , _odgUserIP = Nothing
    , _odgProfileId = pOdgProfileId_
    , _odgKey = Nothing
    , _odgId = pOdgId_
    , _odgProjectId = pOdgProjectId_
    , _odgOAuthToken = Nothing
    , _odgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
odgQuotaUser :: Lens' OrderDocumentsGet' (Maybe Text)
odgQuotaUser
  = lens _odgQuotaUser (\ s a -> s{_odgQuotaUser = a})

-- | Returns response with indentations and line breaks.
odgPrettyPrint :: Lens' OrderDocumentsGet' Bool
odgPrettyPrint
  = lens _odgPrettyPrint
      (\ s a -> s{_odgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
odgUserIP :: Lens' OrderDocumentsGet' (Maybe Text)
odgUserIP
  = lens _odgUserIP (\ s a -> s{_odgUserIP = a})

-- | User profile ID associated with this request.
odgProfileId :: Lens' OrderDocumentsGet' Int64
odgProfileId
  = lens _odgProfileId (\ s a -> s{_odgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
odgKey :: Lens' OrderDocumentsGet' (Maybe Key)
odgKey = lens _odgKey (\ s a -> s{_odgKey = a})

-- | Order document ID.
odgId :: Lens' OrderDocumentsGet' Int64
odgId = lens _odgId (\ s a -> s{_odgId = a})

-- | Project ID for order documents.
odgProjectId :: Lens' OrderDocumentsGet' Int64
odgProjectId
  = lens _odgProjectId (\ s a -> s{_odgProjectId = a})

-- | OAuth 2.0 token for the current user.
odgOAuthToken :: Lens' OrderDocumentsGet' (Maybe OAuthToken)
odgOAuthToken
  = lens _odgOAuthToken
      (\ s a -> s{_odgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
odgFields :: Lens' OrderDocumentsGet' (Maybe Text)
odgFields
  = lens _odgFields (\ s a -> s{_odgFields = a})

instance GoogleAuth OrderDocumentsGet' where
        authKey = odgKey . _Just
        authToken = odgOAuthToken . _Just

instance GoogleRequest OrderDocumentsGet' where
        type Rs OrderDocumentsGet' = OrderDocument
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OrderDocumentsGet'{..}
          = go _odgProfileId _odgProjectId _odgId _odgQuotaUser
              (Just _odgPrettyPrint)
              _odgUserIP
              _odgFields
              _odgKey
              _odgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrderDocumentsGetResource)
                      r
                      u
