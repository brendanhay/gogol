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
-- Module      : Network.Google.Resource.Directory.Orgunits.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgunitsUpdate@.
module Network.Google.Resource.Directory.Orgunits.Update
    (
    -- * REST Resource
      OrgunitsUpdateResource

    -- * Creating a Request
    , orgunitsUpdate'
    , OrgunitsUpdate'

    -- * Request Lenses
    , oQuotaUser
    , oPrettyPrint
    , oUserIp
    , oOrgUnitPath
    , oCustomerId
    , oKey
    , oOauthToken
    , oFields
    , oAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgunitsUpdate@ which the
-- 'OrgunitsUpdate'' request conforms to.
type OrgunitsUpdateResource =
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
    { _oQuotaUser   :: !(Maybe Text)
    , _oPrettyPrint :: !Bool
    , _oUserIp      :: !(Maybe Text)
    , _oOrgUnitPath :: !Text
    , _oCustomerId  :: !Text
    , _oKey         :: !(Maybe Text)
    , _oOauthToken  :: !(Maybe Text)
    , _oFields      :: !(Maybe Text)
    , _oAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgunitsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oQuotaUser'
--
-- * 'oPrettyPrint'
--
-- * 'oUserIp'
--
-- * 'oOrgUnitPath'
--
-- * 'oCustomerId'
--
-- * 'oKey'
--
-- * 'oOauthToken'
--
-- * 'oFields'
--
-- * 'oAlt'
orgunitsUpdate'
    :: Text -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgunitsUpdate'
orgunitsUpdate' pOOrgUnitPath_ pOCustomerId_ =
    OrgunitsUpdate'
    { _oQuotaUser = Nothing
    , _oPrettyPrint = True
    , _oUserIp = Nothing
    , _oOrgUnitPath = pOOrgUnitPath_
    , _oCustomerId = pOCustomerId_
    , _oKey = Nothing
    , _oOauthToken = Nothing
    , _oFields = Nothing
    , _oAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oQuotaUser :: Lens' OrgunitsUpdate' (Maybe Text)
oQuotaUser
  = lens _oQuotaUser (\ s a -> s{_oQuotaUser = a})

-- | Returns response with indentations and line breaks.
oPrettyPrint :: Lens' OrgunitsUpdate' Bool
oPrettyPrint
  = lens _oPrettyPrint (\ s a -> s{_oPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oUserIp :: Lens' OrgunitsUpdate' (Maybe Text)
oUserIp = lens _oUserIp (\ s a -> s{_oUserIp = a})

-- | Full path of the organization unit or its Id
oOrgUnitPath :: Lens' OrgunitsUpdate' Text
oOrgUnitPath
  = lens _oOrgUnitPath (\ s a -> s{_oOrgUnitPath = a})

-- | Immutable id of the Google Apps account
oCustomerId :: Lens' OrgunitsUpdate' Text
oCustomerId
  = lens _oCustomerId (\ s a -> s{_oCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oKey :: Lens' OrgunitsUpdate' (Maybe Text)
oKey = lens _oKey (\ s a -> s{_oKey = a})

-- | OAuth 2.0 token for the current user.
oOauthToken :: Lens' OrgunitsUpdate' (Maybe Text)
oOauthToken
  = lens _oOauthToken (\ s a -> s{_oOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
oFields :: Lens' OrgunitsUpdate' (Maybe Text)
oFields = lens _oFields (\ s a -> s{_oFields = a})

-- | Data format for the response.
oAlt :: Lens' OrgunitsUpdate' Alt
oAlt = lens _oAlt (\ s a -> s{_oAlt = a})

instance GoogleRequest OrgunitsUpdate' where
        type Rs OrgunitsUpdate' = OrgUnit
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgunitsUpdate'{..}
          = go _oQuotaUser (Just _oPrettyPrint) _oUserIp
              _oOrgUnitPath
              _oCustomerId
              _oKey
              _oOauthToken
              _oFields
              (Just _oAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrgunitsUpdateResource)
                      r
                      u
