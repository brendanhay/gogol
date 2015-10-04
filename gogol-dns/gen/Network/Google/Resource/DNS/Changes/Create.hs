{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DNS.Changes.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Atomically update the ResourceRecordSet collection.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSChangesCreate@.
module Network.Google.Resource.DNS.Changes.Create
    (
    -- * REST Resource
      ChangesCreateResource

    -- * Creating a Request
    , changesCreate'
    , ChangesCreate'

    -- * Request Lenses
    , ccQuotaUser
    , ccPrettyPrint
    , ccProject
    , ccUserIP
    , ccPayload
    , ccKey
    , ccOAuthToken
    , ccManagedZone
    , ccFields
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSChangesCreate@ which the
-- 'ChangesCreate'' request conforms to.
type ChangesCreateResource =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           "changes" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] Change :> Post '[JSON] Change

-- | Atomically update the ResourceRecordSet collection.
--
-- /See:/ 'changesCreate'' smart constructor.
data ChangesCreate' = ChangesCreate'
    { _ccQuotaUser   :: !(Maybe Text)
    , _ccPrettyPrint :: !Bool
    , _ccProject     :: !Text
    , _ccUserIP      :: !(Maybe Text)
    , _ccPayload     :: !Change
    , _ccKey         :: !(Maybe Key)
    , _ccOAuthToken  :: !(Maybe OAuthToken)
    , _ccManagedZone :: !Text
    , _ccFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccQuotaUser'
--
-- * 'ccPrettyPrint'
--
-- * 'ccProject'
--
-- * 'ccUserIP'
--
-- * 'ccPayload'
--
-- * 'ccKey'
--
-- * 'ccOAuthToken'
--
-- * 'ccManagedZone'
--
-- * 'ccFields'
changesCreate'
    :: Text -- ^ 'project'
    -> Change -- ^ 'payload'
    -> Text -- ^ 'managedZone'
    -> ChangesCreate'
changesCreate' pCcProject_ pCcPayload_ pCcManagedZone_ =
    ChangesCreate'
    { _ccQuotaUser = Nothing
    , _ccPrettyPrint = True
    , _ccProject = pCcProject_
    , _ccUserIP = Nothing
    , _ccPayload = pCcPayload_
    , _ccKey = Nothing
    , _ccOAuthToken = Nothing
    , _ccManagedZone = pCcManagedZone_
    , _ccFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccQuotaUser :: Lens' ChangesCreate' (Maybe Text)
ccQuotaUser
  = lens _ccQuotaUser (\ s a -> s{_ccQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccPrettyPrint :: Lens' ChangesCreate' Bool
ccPrettyPrint
  = lens _ccPrettyPrint
      (\ s a -> s{_ccPrettyPrint = a})

-- | Identifies the project addressed by this request.
ccProject :: Lens' ChangesCreate' Text
ccProject
  = lens _ccProject (\ s a -> s{_ccProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccUserIP :: Lens' ChangesCreate' (Maybe Text)
ccUserIP = lens _ccUserIP (\ s a -> s{_ccUserIP = a})

-- | Multipart request metadata.
ccPayload :: Lens' ChangesCreate' Change
ccPayload
  = lens _ccPayload (\ s a -> s{_ccPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccKey :: Lens' ChangesCreate' (Maybe Key)
ccKey = lens _ccKey (\ s a -> s{_ccKey = a})

-- | OAuth 2.0 token for the current user.
ccOAuthToken :: Lens' ChangesCreate' (Maybe OAuthToken)
ccOAuthToken
  = lens _ccOAuthToken (\ s a -> s{_ccOAuthToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
ccManagedZone :: Lens' ChangesCreate' Text
ccManagedZone
  = lens _ccManagedZone
      (\ s a -> s{_ccManagedZone = a})

-- | Selector specifying which fields to include in a partial response.
ccFields :: Lens' ChangesCreate' (Maybe Text)
ccFields = lens _ccFields (\ s a -> s{_ccFields = a})

instance GoogleAuth ChangesCreate' where
        authKey = ccKey . _Just
        authToken = ccOAuthToken . _Just

instance GoogleRequest ChangesCreate' where
        type Rs ChangesCreate' = Change
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ChangesCreate'{..}
          = go _ccProject _ccManagedZone _ccQuotaUser
              (Just _ccPrettyPrint)
              _ccUserIP
              _ccFields
              _ccKey
              _ccOAuthToken
              (Just AltJSON)
              _ccPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChangesCreateResource)
                      r
                      u
