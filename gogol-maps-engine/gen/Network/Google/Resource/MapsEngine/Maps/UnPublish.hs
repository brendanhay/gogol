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
-- Module      : Network.Google.Resource.MapsEngine.Maps.UnPublish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unpublish a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsUnPublish@.
module Network.Google.Resource.MapsEngine.Maps.UnPublish
    (
    -- * REST Resource
      MapsUnPublishResource

    -- * Creating a Request
    , mapsUnPublish'
    , MapsUnPublish'

    -- * Request Lenses
    , mupQuotaUser
    , mupPrettyPrint
    , mupUserIP
    , mupKey
    , mupId
    , mupOAuthToken
    , mupFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsUnPublish@ method which the
-- 'MapsUnPublish'' request conforms to.
type MapsUnPublishResource =
     "maps" :>
       Capture "id" Text :>
         "unpublish" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] PublishResponse

-- | Unpublish a map asset.
--
-- /See:/ 'mapsUnPublish'' smart constructor.
data MapsUnPublish' = MapsUnPublish'
    { _mupQuotaUser   :: !(Maybe Text)
    , _mupPrettyPrint :: !Bool
    , _mupUserIP      :: !(Maybe Text)
    , _mupKey         :: !(Maybe AuthKey)
    , _mupId          :: !Text
    , _mupOAuthToken  :: !(Maybe OAuthToken)
    , _mupFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsUnPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mupQuotaUser'
--
-- * 'mupPrettyPrint'
--
-- * 'mupUserIP'
--
-- * 'mupKey'
--
-- * 'mupId'
--
-- * 'mupOAuthToken'
--
-- * 'mupFields'
mapsUnPublish'
    :: Text -- ^ 'id'
    -> MapsUnPublish'
mapsUnPublish' pMupId_ =
    MapsUnPublish'
    { _mupQuotaUser = Nothing
    , _mupPrettyPrint = True
    , _mupUserIP = Nothing
    , _mupKey = Nothing
    , _mupId = pMupId_
    , _mupOAuthToken = Nothing
    , _mupFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mupQuotaUser :: Lens' MapsUnPublish' (Maybe Text)
mupQuotaUser
  = lens _mupQuotaUser (\ s a -> s{_mupQuotaUser = a})

-- | Returns response with indentations and line breaks.
mupPrettyPrint :: Lens' MapsUnPublish' Bool
mupPrettyPrint
  = lens _mupPrettyPrint
      (\ s a -> s{_mupPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mupUserIP :: Lens' MapsUnPublish' (Maybe Text)
mupUserIP
  = lens _mupUserIP (\ s a -> s{_mupUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mupKey :: Lens' MapsUnPublish' (Maybe AuthKey)
mupKey = lens _mupKey (\ s a -> s{_mupKey = a})

-- | The ID of the map.
mupId :: Lens' MapsUnPublish' Text
mupId = lens _mupId (\ s a -> s{_mupId = a})

-- | OAuth 2.0 token for the current user.
mupOAuthToken :: Lens' MapsUnPublish' (Maybe OAuthToken)
mupOAuthToken
  = lens _mupOAuthToken
      (\ s a -> s{_mupOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mupFields :: Lens' MapsUnPublish' (Maybe Text)
mupFields
  = lens _mupFields (\ s a -> s{_mupFields = a})

instance GoogleAuth MapsUnPublish' where
        _AuthKey = mupKey . _Just
        _AuthToken = mupOAuthToken . _Just

instance GoogleRequest MapsUnPublish' where
        type Rs MapsUnPublish' = PublishResponse
        request = requestWith mapsEngineRequest
        requestWith rq MapsUnPublish'{..}
          = go _mupId _mupQuotaUser (Just _mupPrettyPrint)
              _mupUserIP
              _mupFields
              _mupKey
              _mupOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy MapsUnPublishResource)
                      rq
