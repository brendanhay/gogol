{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Orgunits.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.orgunits.update@.
module Network.Google.API.Directory.Orgunits.Update
    (
    -- * REST Resource
      OrgunitsUpdateAPI

    -- * Creating a Request
    , orgunitsUpdate'
    , OrgunitsUpdate'

    -- * Request Lenses
    , ouQuotaUser
    , ouPrettyPrint
    , ouUserIp
    , ouOrgUnitPath
    , ouCustomerId
    , ouKey
    , ouOauthToken
    , ouFields
    , ouAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.orgunits.update which the
-- 'OrgunitsUpdate'' request conforms to.
type OrgunitsUpdateAPI =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits{" :>
           "orgUnitPath*}" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] OrgUnit

-- | Update Organization Unit
--
-- /See:/ 'orgunitsUpdate'' smart constructor.
data OrgunitsUpdate' = OrgunitsUpdate'
    { _ouQuotaUser   :: !(Maybe Text)
    , _ouPrettyPrint :: !Bool
    , _ouUserIp      :: !(Maybe Text)
    , _ouOrgUnitPath :: !Text
    , _ouCustomerId  :: !Text
    , _ouKey         :: !(Maybe Text)
    , _ouOauthToken  :: !(Maybe Text)
    , _ouFields      :: !(Maybe Text)
    , _ouAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgunitsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouQuotaUser'
--
-- * 'ouPrettyPrint'
--
-- * 'ouUserIp'
--
-- * 'ouOrgUnitPath'
--
-- * 'ouCustomerId'
--
-- * 'ouKey'
--
-- * 'ouOauthToken'
--
-- * 'ouFields'
--
-- * 'ouAlt'
orgunitsUpdate'
    :: Text -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgunitsUpdate'
orgunitsUpdate' pOuOrgUnitPath_ pOuCustomerId_ =
    OrgunitsUpdate'
    { _ouQuotaUser = Nothing
    , _ouPrettyPrint = True
    , _ouUserIp = Nothing
    , _ouOrgUnitPath = pOuOrgUnitPath_
    , _ouCustomerId = pOuCustomerId_
    , _ouKey = Nothing
    , _ouOauthToken = Nothing
    , _ouFields = Nothing
    , _ouAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ouQuotaUser :: Lens' OrgunitsUpdate' (Maybe Text)
ouQuotaUser
  = lens _ouQuotaUser (\ s a -> s{_ouQuotaUser = a})

-- | Returns response with indentations and line breaks.
ouPrettyPrint :: Lens' OrgunitsUpdate' Bool
ouPrettyPrint
  = lens _ouPrettyPrint
      (\ s a -> s{_ouPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ouUserIp :: Lens' OrgunitsUpdate' (Maybe Text)
ouUserIp = lens _ouUserIp (\ s a -> s{_ouUserIp = a})

-- | Full path of the organization unit or its Id
ouOrgUnitPath :: Lens' OrgunitsUpdate' Text
ouOrgUnitPath
  = lens _ouOrgUnitPath
      (\ s a -> s{_ouOrgUnitPath = a})

-- | Immutable id of the Google Apps account
ouCustomerId :: Lens' OrgunitsUpdate' Text
ouCustomerId
  = lens _ouCustomerId (\ s a -> s{_ouCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouKey :: Lens' OrgunitsUpdate' (Maybe Text)
ouKey = lens _ouKey (\ s a -> s{_ouKey = a})

-- | OAuth 2.0 token for the current user.
ouOauthToken :: Lens' OrgunitsUpdate' (Maybe Text)
ouOauthToken
  = lens _ouOauthToken (\ s a -> s{_ouOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ouFields :: Lens' OrgunitsUpdate' (Maybe Text)
ouFields = lens _ouFields (\ s a -> s{_ouFields = a})

-- | Data format for the response.
ouAlt :: Lens' OrgunitsUpdate' Alt
ouAlt = lens _ouAlt (\ s a -> s{_ouAlt = a})

instance GoogleRequest OrgunitsUpdate' where
        type Rs OrgunitsUpdate' = OrgUnit
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgunitsUpdate'{..}
          = go _ouQuotaUser (Just _ouPrettyPrint) _ouUserIp
              _ouOrgUnitPath
              _ouCustomerId
              _ouKey
              _ouOauthToken
              _ouFields
              (Just _ouAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OrgunitsUpdateAPI)
                      r
                      u
