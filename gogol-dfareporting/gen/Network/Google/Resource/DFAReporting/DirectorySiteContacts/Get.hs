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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySiteContacts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one directory site contact by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingDirectorySiteContactsGet@.
module Network.Google.Resource.DFAReporting.DirectorySiteContacts.Get
    (
    -- * REST Resource
      DirectorySiteContactsGetResource

    -- * Creating a Request
    , directorySiteContactsGet'
    , DirectorySiteContactsGet'

    -- * Request Lenses
    , dscgQuotaUser
    , dscgPrettyPrint
    , dscgUserIP
    , dscgProfileId
    , dscgKey
    , dscgId
    , dscgOAuthToken
    , dscgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingDirectorySiteContactsGet@ which the
-- 'DirectorySiteContactsGet'' request conforms to.
type DirectorySiteContactsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "directorySiteContacts" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] DirectorySiteContact

-- | Gets one directory site contact by ID.
--
-- /See:/ 'directorySiteContactsGet'' smart constructor.
data DirectorySiteContactsGet' = DirectorySiteContactsGet'
    { _dscgQuotaUser   :: !(Maybe Text)
    , _dscgPrettyPrint :: !Bool
    , _dscgUserIP      :: !(Maybe Text)
    , _dscgProfileId   :: !Int64
    , _dscgKey         :: !(Maybe Key)
    , _dscgId          :: !Int64
    , _dscgOAuthToken  :: !(Maybe OAuthToken)
    , _dscgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySiteContactsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscgQuotaUser'
--
-- * 'dscgPrettyPrint'
--
-- * 'dscgUserIP'
--
-- * 'dscgProfileId'
--
-- * 'dscgKey'
--
-- * 'dscgId'
--
-- * 'dscgOAuthToken'
--
-- * 'dscgFields'
directorySiteContactsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> DirectorySiteContactsGet'
directorySiteContactsGet' pDscgProfileId_ pDscgId_ =
    DirectorySiteContactsGet'
    { _dscgQuotaUser = Nothing
    , _dscgPrettyPrint = True
    , _dscgUserIP = Nothing
    , _dscgProfileId = pDscgProfileId_
    , _dscgKey = Nothing
    , _dscgId = pDscgId_
    , _dscgOAuthToken = Nothing
    , _dscgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dscgQuotaUser :: Lens' DirectorySiteContactsGet' (Maybe Text)
dscgQuotaUser
  = lens _dscgQuotaUser
      (\ s a -> s{_dscgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dscgPrettyPrint :: Lens' DirectorySiteContactsGet' Bool
dscgPrettyPrint
  = lens _dscgPrettyPrint
      (\ s a -> s{_dscgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dscgUserIP :: Lens' DirectorySiteContactsGet' (Maybe Text)
dscgUserIP
  = lens _dscgUserIP (\ s a -> s{_dscgUserIP = a})

-- | User profile ID associated with this request.
dscgProfileId :: Lens' DirectorySiteContactsGet' Int64
dscgProfileId
  = lens _dscgProfileId
      (\ s a -> s{_dscgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dscgKey :: Lens' DirectorySiteContactsGet' (Maybe Key)
dscgKey = lens _dscgKey (\ s a -> s{_dscgKey = a})

-- | Directory site contact ID.
dscgId :: Lens' DirectorySiteContactsGet' Int64
dscgId = lens _dscgId (\ s a -> s{_dscgId = a})

-- | OAuth 2.0 token for the current user.
dscgOAuthToken :: Lens' DirectorySiteContactsGet' (Maybe OAuthToken)
dscgOAuthToken
  = lens _dscgOAuthToken
      (\ s a -> s{_dscgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dscgFields :: Lens' DirectorySiteContactsGet' (Maybe Text)
dscgFields
  = lens _dscgFields (\ s a -> s{_dscgFields = a})

instance GoogleAuth DirectorySiteContactsGet' where
        authKey = dscgKey . _Just
        authToken = dscgOAuthToken . _Just

instance GoogleRequest DirectorySiteContactsGet'
         where
        type Rs DirectorySiteContactsGet' =
             DirectorySiteContact
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u DirectorySiteContactsGet'{..}
          = go _dscgProfileId _dscgId _dscgQuotaUser
              (Just _dscgPrettyPrint)
              _dscgUserIP
              _dscgFields
              _dscgKey
              _dscgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DirectorySiteContactsGetResource)
                      r
                      u
