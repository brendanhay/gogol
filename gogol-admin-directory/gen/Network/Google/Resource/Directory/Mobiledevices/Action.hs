{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Mobiledevices.Action
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Take action on Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMobiledevicesAction@.
module Directory.Mobiledevices.Action
    (
    -- * REST Resource
      MobiledevicesActionAPI

    -- * Creating a Request
    , mobiledevicesAction
    , MobiledevicesAction

    -- * Request Lenses
    , maQuotaUser
    , maResourceId
    , maPrettyPrint
    , maUserIp
    , maCustomerId
    , maKey
    , maOauthToken
    , maFields
    , maAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMobiledevicesAction@ which the
-- 'MobiledevicesAction' request conforms to.
type MobiledevicesActionAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             Capture "resourceId" Text :>
               "action" :> Post '[JSON] ()

-- | Take action on Mobile Device
--
-- /See:/ 'mobiledevicesAction' smart constructor.
data MobiledevicesAction = MobiledevicesAction
    { _maQuotaUser   :: !(Maybe Text)
    , _maResourceId  :: !Text
    , _maPrettyPrint :: !Bool
    , _maUserIp      :: !(Maybe Text)
    , _maCustomerId  :: !Text
    , _maKey         :: !(Maybe Text)
    , _maOauthToken  :: !(Maybe Text)
    , _maFields      :: !(Maybe Text)
    , _maAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobiledevicesAction'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maQuotaUser'
--
-- * 'maResourceId'
--
-- * 'maPrettyPrint'
--
-- * 'maUserIp'
--
-- * 'maCustomerId'
--
-- * 'maKey'
--
-- * 'maOauthToken'
--
-- * 'maFields'
--
-- * 'maAlt'
mobiledevicesAction
    :: Text -- ^ 'resourceId'
    -> Text -- ^ 'customerId'
    -> MobiledevicesAction
mobiledevicesAction pMaResourceId_ pMaCustomerId_ =
    MobiledevicesAction
    { _maQuotaUser = Nothing
    , _maResourceId = pMaResourceId_
    , _maPrettyPrint = True
    , _maUserIp = Nothing
    , _maCustomerId = pMaCustomerId_
    , _maKey = Nothing
    , _maOauthToken = Nothing
    , _maFields = Nothing
    , _maAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
maQuotaUser :: Lens' MobiledevicesAction' (Maybe Text)
maQuotaUser
  = lens _maQuotaUser (\ s a -> s{_maQuotaUser = a})

-- | Immutable id of Mobile Device
maResourceId :: Lens' MobiledevicesAction' Text
maResourceId
  = lens _maResourceId (\ s a -> s{_maResourceId = a})

-- | Returns response with indentations and line breaks.
maPrettyPrint :: Lens' MobiledevicesAction' Bool
maPrettyPrint
  = lens _maPrettyPrint
      (\ s a -> s{_maPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
maUserIp :: Lens' MobiledevicesAction' (Maybe Text)
maUserIp = lens _maUserIp (\ s a -> s{_maUserIp = a})

-- | Immutable id of the Google Apps account
maCustomerId :: Lens' MobiledevicesAction' Text
maCustomerId
  = lens _maCustomerId (\ s a -> s{_maCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
maKey :: Lens' MobiledevicesAction' (Maybe Text)
maKey = lens _maKey (\ s a -> s{_maKey = a})

-- | OAuth 2.0 token for the current user.
maOauthToken :: Lens' MobiledevicesAction' (Maybe Text)
maOauthToken
  = lens _maOauthToken (\ s a -> s{_maOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
maFields :: Lens' MobiledevicesAction' (Maybe Text)
maFields = lens _maFields (\ s a -> s{_maFields = a})

-- | Data format for the response.
maAlt :: Lens' MobiledevicesAction' Text
maAlt = lens _maAlt (\ s a -> s{_maAlt = a})

instance GoogleRequest MobiledevicesAction' where
        type Rs MobiledevicesAction' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobiledevicesAction{..}
          = go _maQuotaUser _maResourceId _maPrettyPrint
              _maUserIp
              _maCustomerId
              _maKey
              _maOauthToken
              _maFields
              _maAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobiledevicesActionAPI)
                      r
                      u
