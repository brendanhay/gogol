{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Properties.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a property. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.patch@.
module Network.Google.API.Drive.Properties.Patch
    (
    -- * REST Resource
      PropertiesPatchAPI

    -- * Creating a Request
    , propertiesPatch'
    , PropertiesPatch'

    -- * Request Lenses
    , pppQuotaUser
    , pppPrettyPrint
    , pppPropertyKey
    , pppUserIp
    , pppVisibility
    , pppKey
    , pppFileId
    , pppOauthToken
    , pppFields
    , pppAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.properties.patch which the
-- 'PropertiesPatch'' request conforms to.
type PropertiesPatchAPI =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           Capture "propertyKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "visibility" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Patch '[JSON] Property

-- | Updates a property. This method supports patch semantics.
--
-- /See:/ 'propertiesPatch'' smart constructor.
data PropertiesPatch' = PropertiesPatch'
    { _pppQuotaUser   :: !(Maybe Text)
    , _pppPrettyPrint :: !Bool
    , _pppPropertyKey :: !Text
    , _pppUserIp      :: !(Maybe Text)
    , _pppVisibility  :: !Text
    , _pppKey         :: !(Maybe Text)
    , _pppFileId      :: !Text
    , _pppOauthToken  :: !(Maybe Text)
    , _pppFields      :: !(Maybe Text)
    , _pppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppQuotaUser'
--
-- * 'pppPrettyPrint'
--
-- * 'pppPropertyKey'
--
-- * 'pppUserIp'
--
-- * 'pppVisibility'
--
-- * 'pppKey'
--
-- * 'pppFileId'
--
-- * 'pppOauthToken'
--
-- * 'pppFields'
--
-- * 'pppAlt'
propertiesPatch'
    :: Text -- ^ 'propertyKey'
    -> Text -- ^ 'fileId'
    -> PropertiesPatch'
propertiesPatch' pPppPropertyKey_ pPppFileId_ =
    PropertiesPatch'
    { _pppQuotaUser = Nothing
    , _pppPrettyPrint = True
    , _pppPropertyKey = pPppPropertyKey_
    , _pppUserIp = Nothing
    , _pppVisibility = "private"
    , _pppKey = Nothing
    , _pppFileId = pPppFileId_
    , _pppOauthToken = Nothing
    , _pppFields = Nothing
    , _pppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pppQuotaUser :: Lens' PropertiesPatch' (Maybe Text)
pppQuotaUser
  = lens _pppQuotaUser (\ s a -> s{_pppQuotaUser = a})

-- | Returns response with indentations and line breaks.
pppPrettyPrint :: Lens' PropertiesPatch' Bool
pppPrettyPrint
  = lens _pppPrettyPrint
      (\ s a -> s{_pppPrettyPrint = a})

-- | The key of the property.
pppPropertyKey :: Lens' PropertiesPatch' Text
pppPropertyKey
  = lens _pppPropertyKey
      (\ s a -> s{_pppPropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pppUserIp :: Lens' PropertiesPatch' (Maybe Text)
pppUserIp
  = lens _pppUserIp (\ s a -> s{_pppUserIp = a})

-- | The visibility of the property.
pppVisibility :: Lens' PropertiesPatch' Text
pppVisibility
  = lens _pppVisibility
      (\ s a -> s{_pppVisibility = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pppKey :: Lens' PropertiesPatch' (Maybe Text)
pppKey = lens _pppKey (\ s a -> s{_pppKey = a})

-- | The ID of the file.
pppFileId :: Lens' PropertiesPatch' Text
pppFileId
  = lens _pppFileId (\ s a -> s{_pppFileId = a})

-- | OAuth 2.0 token for the current user.
pppOauthToken :: Lens' PropertiesPatch' (Maybe Text)
pppOauthToken
  = lens _pppOauthToken
      (\ s a -> s{_pppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pppFields :: Lens' PropertiesPatch' (Maybe Text)
pppFields
  = lens _pppFields (\ s a -> s{_pppFields = a})

-- | Data format for the response.
pppAlt :: Lens' PropertiesPatch' Alt
pppAlt = lens _pppAlt (\ s a -> s{_pppAlt = a})

instance GoogleRequest PropertiesPatch' where
        type Rs PropertiesPatch' = Property
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesPatch'{..}
          = go _pppQuotaUser (Just _pppPrettyPrint)
              _pppPropertyKey
              _pppUserIp
              (Just _pppVisibility)
              _pppKey
              _pppFileId
              _pppOauthToken
              _pppFields
              (Just _pppAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PropertiesPatchAPI)
                      r
                      u
