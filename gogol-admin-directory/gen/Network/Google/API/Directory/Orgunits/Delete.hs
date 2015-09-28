{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Orgunits.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.orgunits.delete@.
module Network.Google.API.Directory.Orgunits.Delete
    (
    -- * REST Resource
      OrgunitsDeleteAPI

    -- * Creating a Request
    , orgunitsDelete'
    , OrgunitsDelete'

    -- * Request Lenses
    , odQuotaUser
    , odPrettyPrint
    , odUserIp
    , odOrgUnitPath
    , odCustomerId
    , odKey
    , odOauthToken
    , odFields
    , odAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.orgunits.delete which the
-- 'OrgunitsDelete'' request conforms to.
type OrgunitsDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Remove Organization Unit
--
-- /See:/ 'orgunitsDelete'' smart constructor.
data OrgunitsDelete' = OrgunitsDelete'
    { _odQuotaUser   :: !(Maybe Text)
    , _odPrettyPrint :: !Bool
    , _odUserIp      :: !(Maybe Text)
    , _odOrgUnitPath :: !Text
    , _odCustomerId  :: !Text
    , _odKey         :: !(Maybe Text)
    , _odOauthToken  :: !(Maybe Text)
    , _odFields      :: !(Maybe Text)
    , _odAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgunitsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odQuotaUser'
--
-- * 'odPrettyPrint'
--
-- * 'odUserIp'
--
-- * 'odOrgUnitPath'
--
-- * 'odCustomerId'
--
-- * 'odKey'
--
-- * 'odOauthToken'
--
-- * 'odFields'
--
-- * 'odAlt'
orgunitsDelete'
    :: Text -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgunitsDelete'
orgunitsDelete' pOdOrgUnitPath_ pOdCustomerId_ =
    OrgunitsDelete'
    { _odQuotaUser = Nothing
    , _odPrettyPrint = True
    , _odUserIp = Nothing
    , _odOrgUnitPath = pOdOrgUnitPath_
    , _odCustomerId = pOdCustomerId_
    , _odKey = Nothing
    , _odOauthToken = Nothing
    , _odFields = Nothing
    , _odAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
odQuotaUser :: Lens' OrgunitsDelete' (Maybe Text)
odQuotaUser
  = lens _odQuotaUser (\ s a -> s{_odQuotaUser = a})

-- | Returns response with indentations and line breaks.
odPrettyPrint :: Lens' OrgunitsDelete' Bool
odPrettyPrint
  = lens _odPrettyPrint
      (\ s a -> s{_odPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
odUserIp :: Lens' OrgunitsDelete' (Maybe Text)
odUserIp = lens _odUserIp (\ s a -> s{_odUserIp = a})

-- | Full path of the organization unit or its Id
odOrgUnitPath :: Lens' OrgunitsDelete' Text
odOrgUnitPath
  = lens _odOrgUnitPath
      (\ s a -> s{_odOrgUnitPath = a})

-- | Immutable id of the Google Apps account
odCustomerId :: Lens' OrgunitsDelete' Text
odCustomerId
  = lens _odCustomerId (\ s a -> s{_odCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
odKey :: Lens' OrgunitsDelete' (Maybe Text)
odKey = lens _odKey (\ s a -> s{_odKey = a})

-- | OAuth 2.0 token for the current user.
odOauthToken :: Lens' OrgunitsDelete' (Maybe Text)
odOauthToken
  = lens _odOauthToken (\ s a -> s{_odOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
odFields :: Lens' OrgunitsDelete' (Maybe Text)
odFields = lens _odFields (\ s a -> s{_odFields = a})

-- | Data format for the response.
odAlt :: Lens' OrgunitsDelete' Alt
odAlt = lens _odAlt (\ s a -> s{_odAlt = a})

instance GoogleRequest OrgunitsDelete' where
        type Rs OrgunitsDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgunitsDelete'{..}
          = go _odQuotaUser (Just _odPrettyPrint) _odUserIp
              _odOrgUnitPath
              _odCustomerId
              _odKey
              _odOauthToken
              _odFields
              (Just _odAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OrgunitsDeleteAPI)
                      r
                      u
