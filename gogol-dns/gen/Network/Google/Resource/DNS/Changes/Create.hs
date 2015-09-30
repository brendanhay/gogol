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
    , ccUserIp
    , ccKey
    , ccOauthToken
    , ccManagedZone
    , ccFields
    , ccAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Change

-- | Atomically update the ResourceRecordSet collection.
--
-- /See:/ 'changesCreate'' smart constructor.
data ChangesCreate' = ChangesCreate'
    { _ccQuotaUser   :: !(Maybe Text)
    , _ccPrettyPrint :: !Bool
    , _ccProject     :: !Text
    , _ccUserIp      :: !(Maybe Text)
    , _ccKey         :: !(Maybe Text)
    , _ccOauthToken  :: !(Maybe Text)
    , _ccManagedZone :: !Text
    , _ccFields      :: !(Maybe Text)
    , _ccAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ccUserIp'
--
-- * 'ccKey'
--
-- * 'ccOauthToken'
--
-- * 'ccManagedZone'
--
-- * 'ccFields'
--
-- * 'ccAlt'
changesCreate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'managedZone'
    -> ChangesCreate'
changesCreate' pCcProject_ pCcManagedZone_ =
    ChangesCreate'
    { _ccQuotaUser = Nothing
    , _ccPrettyPrint = True
    , _ccProject = pCcProject_
    , _ccUserIp = Nothing
    , _ccKey = Nothing
    , _ccOauthToken = Nothing
    , _ccManagedZone = pCcManagedZone_
    , _ccFields = Nothing
    , _ccAlt = JSON
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
ccUserIp :: Lens' ChangesCreate' (Maybe Text)
ccUserIp = lens _ccUserIp (\ s a -> s{_ccUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccKey :: Lens' ChangesCreate' (Maybe Text)
ccKey = lens _ccKey (\ s a -> s{_ccKey = a})

-- | OAuth 2.0 token for the current user.
ccOauthToken :: Lens' ChangesCreate' (Maybe Text)
ccOauthToken
  = lens _ccOauthToken (\ s a -> s{_ccOauthToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
ccManagedZone :: Lens' ChangesCreate' Text
ccManagedZone
  = lens _ccManagedZone
      (\ s a -> s{_ccManagedZone = a})

-- | Selector specifying which fields to include in a partial response.
ccFields :: Lens' ChangesCreate' (Maybe Text)
ccFields = lens _ccFields (\ s a -> s{_ccFields = a})

-- | Data format for the response.
ccAlt :: Lens' ChangesCreate' Alt
ccAlt = lens _ccAlt (\ s a -> s{_ccAlt = a})

instance GoogleRequest ChangesCreate' where
        type Rs ChangesCreate' = Change
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ChangesCreate'{..}
          = go _ccQuotaUser (Just _ccPrettyPrint) _ccProject
              _ccUserIp
              _ccKey
              _ccOauthToken
              _ccManagedZone
              _ccFields
              (Just _ccAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChangesCreateResource)
                      r
                      u
