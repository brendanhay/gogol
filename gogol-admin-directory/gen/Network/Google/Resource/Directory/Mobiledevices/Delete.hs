{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Mobiledevices.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMobiledevicesDelete@.
module Directory.Mobiledevices.Delete
    (
    -- * REST Resource
      MobiledevicesDeleteAPI

    -- * Creating a Request
    , mobiledevicesDelete
    , MobiledevicesDelete

    -- * Request Lenses
    , mddQuotaUser
    , mddResourceId
    , mddPrettyPrint
    , mddUserIp
    , mddCustomerId
    , mddKey
    , mddOauthToken
    , mddFields
    , mddAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMobiledevicesDelete@ which the
-- 'MobiledevicesDelete' request conforms to.
type MobiledevicesDeleteAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             Capture "resourceId" Text :> Delete '[JSON] ()

-- | Delete Mobile Device
--
-- /See:/ 'mobiledevicesDelete' smart constructor.
data MobiledevicesDelete = MobiledevicesDelete
    { _mddQuotaUser   :: !(Maybe Text)
    , _mddResourceId  :: !Text
    , _mddPrettyPrint :: !Bool
    , _mddUserIp      :: !(Maybe Text)
    , _mddCustomerId  :: !Text
    , _mddKey         :: !(Maybe Text)
    , _mddOauthToken  :: !(Maybe Text)
    , _mddFields      :: !(Maybe Text)
    , _mddAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobiledevicesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddQuotaUser'
--
-- * 'mddResourceId'
--
-- * 'mddPrettyPrint'
--
-- * 'mddUserIp'
--
-- * 'mddCustomerId'
--
-- * 'mddKey'
--
-- * 'mddOauthToken'
--
-- * 'mddFields'
--
-- * 'mddAlt'
mobiledevicesDelete
    :: Text -- ^ 'resourceId'
    -> Text -- ^ 'customerId'
    -> MobiledevicesDelete
mobiledevicesDelete pMddResourceId_ pMddCustomerId_ =
    MobiledevicesDelete
    { _mddQuotaUser = Nothing
    , _mddResourceId = pMddResourceId_
    , _mddPrettyPrint = True
    , _mddUserIp = Nothing
    , _mddCustomerId = pMddCustomerId_
    , _mddKey = Nothing
    , _mddOauthToken = Nothing
    , _mddFields = Nothing
    , _mddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mddQuotaUser :: Lens' MobiledevicesDelete' (Maybe Text)
mddQuotaUser
  = lens _mddQuotaUser (\ s a -> s{_mddQuotaUser = a})

-- | Immutable id of Mobile Device
mddResourceId :: Lens' MobiledevicesDelete' Text
mddResourceId
  = lens _mddResourceId
      (\ s a -> s{_mddResourceId = a})

-- | Returns response with indentations and line breaks.
mddPrettyPrint :: Lens' MobiledevicesDelete' Bool
mddPrettyPrint
  = lens _mddPrettyPrint
      (\ s a -> s{_mddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mddUserIp :: Lens' MobiledevicesDelete' (Maybe Text)
mddUserIp
  = lens _mddUserIp (\ s a -> s{_mddUserIp = a})

-- | Immutable id of the Google Apps account
mddCustomerId :: Lens' MobiledevicesDelete' Text
mddCustomerId
  = lens _mddCustomerId
      (\ s a -> s{_mddCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mddKey :: Lens' MobiledevicesDelete' (Maybe Text)
mddKey = lens _mddKey (\ s a -> s{_mddKey = a})

-- | OAuth 2.0 token for the current user.
mddOauthToken :: Lens' MobiledevicesDelete' (Maybe Text)
mddOauthToken
  = lens _mddOauthToken
      (\ s a -> s{_mddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mddFields :: Lens' MobiledevicesDelete' (Maybe Text)
mddFields
  = lens _mddFields (\ s a -> s{_mddFields = a})

-- | Data format for the response.
mddAlt :: Lens' MobiledevicesDelete' Text
mddAlt = lens _mddAlt (\ s a -> s{_mddAlt = a})

instance GoogleRequest MobiledevicesDelete' where
        type Rs MobiledevicesDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobiledevicesDelete{..}
          = go _mddQuotaUser _mddResourceId _mddPrettyPrint
              _mddUserIp
              _mddCustomerId
              _mddKey
              _mddOauthToken
              _mddFields
              _mddAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobiledevicesDeleteAPI)
                      r
                      u
