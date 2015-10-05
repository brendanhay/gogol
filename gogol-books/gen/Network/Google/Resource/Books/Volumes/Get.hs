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
-- Module      : Network.Google.Resource.Books.Volumes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets volume information for a single volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesGet@.
module Network.Google.Resource.Books.Volumes.Get
    (
    -- * REST Resource
      VolumesGetResource

    -- * Creating a Request
    , volumesGet'
    , VolumesGet'

    -- * Request Lenses
    , vgQuotaUser
    , vgPrettyPrint
    , vgCountry
    , vgUserIP
    , vgPartner
    , vgKey
    , vgVolumeId
    , vgSource
    , vgProjection
    , vgOAuthToken
    , vgUserLibraryConsistentRead
    , vgFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesGet@ which the
-- 'VolumesGet'' request conforms to.
type VolumesGetResource =
     "volumes" :>
       Capture "volumeId" Text :>
         QueryParam "country" Text :>
           QueryParam "partner" Text :>
             QueryParam "source" Text :>
               QueryParam "projection" VolumesGetProjection :>
                 QueryParam "user_library_consistent_read" Bool :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Volume

-- | Gets volume information for a single volume.
--
-- /See:/ 'volumesGet'' smart constructor.
data VolumesGet' = VolumesGet'
    { _vgQuotaUser                 :: !(Maybe Text)
    , _vgPrettyPrint               :: !Bool
    , _vgCountry                   :: !(Maybe Text)
    , _vgUserIP                    :: !(Maybe Text)
    , _vgPartner                   :: !(Maybe Text)
    , _vgKey                       :: !(Maybe AuthKey)
    , _vgVolumeId                  :: !Text
    , _vgSource                    :: !(Maybe Text)
    , _vgProjection                :: !(Maybe VolumesGetProjection)
    , _vgOAuthToken                :: !(Maybe OAuthToken)
    , _vgUserLibraryConsistentRead :: !(Maybe Bool)
    , _vgFields                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgQuotaUser'
--
-- * 'vgPrettyPrint'
--
-- * 'vgCountry'
--
-- * 'vgUserIP'
--
-- * 'vgPartner'
--
-- * 'vgKey'
--
-- * 'vgVolumeId'
--
-- * 'vgSource'
--
-- * 'vgProjection'
--
-- * 'vgOAuthToken'
--
-- * 'vgUserLibraryConsistentRead'
--
-- * 'vgFields'
volumesGet'
    :: Text -- ^ 'volumeId'
    -> VolumesGet'
volumesGet' pVgVolumeId_ =
    VolumesGet'
    { _vgQuotaUser = Nothing
    , _vgPrettyPrint = True
    , _vgCountry = Nothing
    , _vgUserIP = Nothing
    , _vgPartner = Nothing
    , _vgKey = Nothing
    , _vgVolumeId = pVgVolumeId_
    , _vgSource = Nothing
    , _vgProjection = Nothing
    , _vgOAuthToken = Nothing
    , _vgUserLibraryConsistentRead = Nothing
    , _vgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vgQuotaUser :: Lens' VolumesGet' (Maybe Text)
vgQuotaUser
  = lens _vgQuotaUser (\ s a -> s{_vgQuotaUser = a})

-- | Returns response with indentations and line breaks.
vgPrettyPrint :: Lens' VolumesGet' Bool
vgPrettyPrint
  = lens _vgPrettyPrint
      (\ s a -> s{_vgPrettyPrint = a})

-- | ISO-3166-1 code to override the IP-based location.
vgCountry :: Lens' VolumesGet' (Maybe Text)
vgCountry
  = lens _vgCountry (\ s a -> s{_vgCountry = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vgUserIP :: Lens' VolumesGet' (Maybe Text)
vgUserIP = lens _vgUserIP (\ s a -> s{_vgUserIP = a})

-- | Brand results for partner ID.
vgPartner :: Lens' VolumesGet' (Maybe Text)
vgPartner
  = lens _vgPartner (\ s a -> s{_vgPartner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vgKey :: Lens' VolumesGet' (Maybe AuthKey)
vgKey = lens _vgKey (\ s a -> s{_vgKey = a})

-- | ID of volume to retrieve.
vgVolumeId :: Lens' VolumesGet' Text
vgVolumeId
  = lens _vgVolumeId (\ s a -> s{_vgVolumeId = a})

-- | String to identify the originator of this request.
vgSource :: Lens' VolumesGet' (Maybe Text)
vgSource = lens _vgSource (\ s a -> s{_vgSource = a})

-- | Restrict information returned to a set of selected fields.
vgProjection :: Lens' VolumesGet' (Maybe VolumesGetProjection)
vgProjection
  = lens _vgProjection (\ s a -> s{_vgProjection = a})

-- | OAuth 2.0 token for the current user.
vgOAuthToken :: Lens' VolumesGet' (Maybe OAuthToken)
vgOAuthToken
  = lens _vgOAuthToken (\ s a -> s{_vgOAuthToken = a})

vgUserLibraryConsistentRead :: Lens' VolumesGet' (Maybe Bool)
vgUserLibraryConsistentRead
  = lens _vgUserLibraryConsistentRead
      (\ s a -> s{_vgUserLibraryConsistentRead = a})

-- | Selector specifying which fields to include in a partial response.
vgFields :: Lens' VolumesGet' (Maybe Text)
vgFields = lens _vgFields (\ s a -> s{_vgFields = a})

instance GoogleAuth VolumesGet' where
        authKey = vgKey . _Just
        authToken = vgOAuthToken . _Just

instance GoogleRequest VolumesGet' where
        type Rs VolumesGet' = Volume
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesGet'{..}
          = go _vgVolumeId _vgCountry _vgPartner _vgSource
              _vgProjection
              _vgUserLibraryConsistentRead
              _vgQuotaUser
              (Just _vgPrettyPrint)
              _vgUserIP
              _vgFields
              _vgKey
              _vgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy VolumesGetResource)
                      r
                      u
