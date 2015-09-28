{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.DirectorySiteContacts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one directory site contact by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.directorySiteContacts.get@.
module Network.Google.API.DFAReporting.DirectorySiteContacts.Get
    (
    -- * REST Resource
      DirectorySiteContactsGetAPI

    -- * Creating a Request
    , directorySiteContactsGet'
    , DirectorySiteContactsGet'

    -- * Request Lenses
    , dscgQuotaUser
    , dscgPrettyPrint
    , dscgUserIp
    , dscgProfileId
    , dscgKey
    , dscgId
    , dscgOauthToken
    , dscgFields
    , dscgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.directorySiteContacts.get which the
-- 'DirectorySiteContactsGet'' request conforms to.
type DirectorySiteContactsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "directorySiteContacts" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] DirectorySiteContact

-- | Gets one directory site contact by ID.
--
-- /See:/ 'directorySiteContactsGet'' smart constructor.
data DirectorySiteContactsGet' = DirectorySiteContactsGet'
    { _dscgQuotaUser   :: !(Maybe Text)
    , _dscgPrettyPrint :: !Bool
    , _dscgUserIp      :: !(Maybe Text)
    , _dscgProfileId   :: !Int64
    , _dscgKey         :: !(Maybe Text)
    , _dscgId          :: !Int64
    , _dscgOauthToken  :: !(Maybe Text)
    , _dscgFields      :: !(Maybe Text)
    , _dscgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySiteContactsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscgQuotaUser'
--
-- * 'dscgPrettyPrint'
--
-- * 'dscgUserIp'
--
-- * 'dscgProfileId'
--
-- * 'dscgKey'
--
-- * 'dscgId'
--
-- * 'dscgOauthToken'
--
-- * 'dscgFields'
--
-- * 'dscgAlt'
directorySiteContactsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> DirectorySiteContactsGet'
directorySiteContactsGet' pDscgProfileId_ pDscgId_ =
    DirectorySiteContactsGet'
    { _dscgQuotaUser = Nothing
    , _dscgPrettyPrint = True
    , _dscgUserIp = Nothing
    , _dscgProfileId = pDscgProfileId_
    , _dscgKey = Nothing
    , _dscgId = pDscgId_
    , _dscgOauthToken = Nothing
    , _dscgFields = Nothing
    , _dscgAlt = JSON
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
dscgUserIp :: Lens' DirectorySiteContactsGet' (Maybe Text)
dscgUserIp
  = lens _dscgUserIp (\ s a -> s{_dscgUserIp = a})

-- | User profile ID associated with this request.
dscgProfileId :: Lens' DirectorySiteContactsGet' Int64
dscgProfileId
  = lens _dscgProfileId
      (\ s a -> s{_dscgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dscgKey :: Lens' DirectorySiteContactsGet' (Maybe Text)
dscgKey = lens _dscgKey (\ s a -> s{_dscgKey = a})

-- | Directory site contact ID.
dscgId :: Lens' DirectorySiteContactsGet' Int64
dscgId = lens _dscgId (\ s a -> s{_dscgId = a})

-- | OAuth 2.0 token for the current user.
dscgOauthToken :: Lens' DirectorySiteContactsGet' (Maybe Text)
dscgOauthToken
  = lens _dscgOauthToken
      (\ s a -> s{_dscgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dscgFields :: Lens' DirectorySiteContactsGet' (Maybe Text)
dscgFields
  = lens _dscgFields (\ s a -> s{_dscgFields = a})

-- | Data format for the response.
dscgAlt :: Lens' DirectorySiteContactsGet' Alt
dscgAlt = lens _dscgAlt (\ s a -> s{_dscgAlt = a})

instance GoogleRequest DirectorySiteContactsGet'
         where
        type Rs DirectorySiteContactsGet' =
             DirectorySiteContact
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u DirectorySiteContactsGet'{..}
          = go _dscgQuotaUser (Just _dscgPrettyPrint)
              _dscgUserIp
              _dscgProfileId
              _dscgKey
              _dscgId
              _dscgOauthToken
              _dscgFields
              (Just _dscgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DirectorySiteContactsGetAPI)
                      r
                      u
