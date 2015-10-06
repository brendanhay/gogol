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
-- Module      : Network.Google.Resource.DNS.Changes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetch the representation of an existing Change.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSChangesGet@.
module Network.Google.Resource.DNS.Changes.Get
    (
    -- * REST Resource
      ChangesGetResource

    -- * Creating a Request
    , changesGet'
    , ChangesGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgProject
    , cgUserIP
    , cgChangeId
    , cgKey
    , cgOAuthToken
    , cgManagedZone
    , cgFields
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSChangesGet@ which the
-- 'ChangesGet'' request conforms to.
type ChangesGetResource =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           "changes" :>
             Capture "changeId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Change

-- | Fetch the representation of an existing Change.
--
-- /See:/ 'changesGet'' smart constructor.
data ChangesGet' = ChangesGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgProject     :: !Text
    , _cgUserIP      :: !(Maybe Text)
    , _cgChangeId    :: !Text
    , _cgKey         :: !(Maybe AuthKey)
    , _cgOAuthToken  :: !(Maybe OAuthToken)
    , _cgManagedZone :: !Text
    , _cgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgProject'
--
-- * 'cgUserIP'
--
-- * 'cgChangeId'
--
-- * 'cgKey'
--
-- * 'cgOAuthToken'
--
-- * 'cgManagedZone'
--
-- * 'cgFields'
changesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'changeId'
    -> Text -- ^ 'managedZone'
    -> ChangesGet'
changesGet' pCgProject_ pCgChangeId_ pCgManagedZone_ =
    ChangesGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgProject = pCgProject_
    , _cgUserIP = Nothing
    , _cgChangeId = pCgChangeId_
    , _cgKey = Nothing
    , _cgOAuthToken = Nothing
    , _cgManagedZone = pCgManagedZone_
    , _cgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' ChangesGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' ChangesGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | Identifies the project addressed by this request.
cgProject :: Lens' ChangesGet' Text
cgProject
  = lens _cgProject (\ s a -> s{_cgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIP :: Lens' ChangesGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

-- | The identifier of the requested change, from a previous
-- ResourceRecordSetsChangeResponse.
cgChangeId :: Lens' ChangesGet' Text
cgChangeId
  = lens _cgChangeId (\ s a -> s{_cgChangeId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' ChangesGet' (Maybe AuthKey)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' ChangesGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
cgManagedZone :: Lens' ChangesGet' Text
cgManagedZone
  = lens _cgManagedZone
      (\ s a -> s{_cgManagedZone = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' ChangesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth ChangesGet' where
        _AuthKey = cgKey . _Just
        _AuthToken = cgOAuthToken . _Just

instance GoogleRequest ChangesGet' where
        type Rs ChangesGet' = Change
        request = requestWith dNSRequest
        requestWith rq ChangesGet'{..}
          = go _cgProject _cgManagedZone _cgChangeId
              _cgQuotaUser
              (Just _cgPrettyPrint)
              _cgUserIP
              _cgFields
              _cgKey
              _cgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ChangesGetResource) rq
