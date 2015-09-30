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
    , vgUserIp
    , vgPartner
    , vgKey
    , vgVolumeId
    , vgSource
    , vgProjection
    , vgOauthToken
    , vgUserLibraryConsistentRead
    , vgFields
    , vgAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesGet@ which the
-- 'VolumesGet'' request conforms to.
type VolumesGetResource =
     "volumes" :>
       Capture "volumeId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "country" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "partner" Text :>
                   QueryParam "key" Text :>
                     QueryParam "source" Text :>
                       QueryParam "projection" BooksVolumesGetProjection :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "user_library_consistent_read" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] Volume

-- | Gets volume information for a single volume.
--
-- /See:/ 'volumesGet'' smart constructor.
data VolumesGet' = VolumesGet'
    { _vgQuotaUser                 :: !(Maybe Text)
    , _vgPrettyPrint               :: !Bool
    , _vgCountry                   :: !(Maybe Text)
    , _vgUserIp                    :: !(Maybe Text)
    , _vgPartner                   :: !(Maybe Text)
    , _vgKey                       :: !(Maybe Text)
    , _vgVolumeId                  :: !Text
    , _vgSource                    :: !(Maybe Text)
    , _vgProjection                :: !(Maybe BooksVolumesGetProjection)
    , _vgOauthToken                :: !(Maybe Text)
    , _vgUserLibraryConsistentRead :: !(Maybe Bool)
    , _vgFields                    :: !(Maybe Text)
    , _vgAlt                       :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'vgUserIp'
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
-- * 'vgOauthToken'
--
-- * 'vgUserLibraryConsistentRead'
--
-- * 'vgFields'
--
-- * 'vgAlt'
volumesGet'
    :: Text -- ^ 'volumeId'
    -> VolumesGet'
volumesGet' pVgVolumeId_ =
    VolumesGet'
    { _vgQuotaUser = Nothing
    , _vgPrettyPrint = True
    , _vgCountry = Nothing
    , _vgUserIp = Nothing
    , _vgPartner = Nothing
    , _vgKey = Nothing
    , _vgVolumeId = pVgVolumeId_
    , _vgSource = Nothing
    , _vgProjection = Nothing
    , _vgOauthToken = Nothing
    , _vgUserLibraryConsistentRead = Nothing
    , _vgFields = Nothing
    , _vgAlt = JSON
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
vgUserIp :: Lens' VolumesGet' (Maybe Text)
vgUserIp = lens _vgUserIp (\ s a -> s{_vgUserIp = a})

-- | Brand results for partner ID.
vgPartner :: Lens' VolumesGet' (Maybe Text)
vgPartner
  = lens _vgPartner (\ s a -> s{_vgPartner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vgKey :: Lens' VolumesGet' (Maybe Text)
vgKey = lens _vgKey (\ s a -> s{_vgKey = a})

-- | ID of volume to retrieve.
vgVolumeId :: Lens' VolumesGet' Text
vgVolumeId
  = lens _vgVolumeId (\ s a -> s{_vgVolumeId = a})

-- | String to identify the originator of this request.
vgSource :: Lens' VolumesGet' (Maybe Text)
vgSource = lens _vgSource (\ s a -> s{_vgSource = a})

-- | Restrict information returned to a set of selected fields.
vgProjection :: Lens' VolumesGet' (Maybe BooksVolumesGetProjection)
vgProjection
  = lens _vgProjection (\ s a -> s{_vgProjection = a})

-- | OAuth 2.0 token for the current user.
vgOauthToken :: Lens' VolumesGet' (Maybe Text)
vgOauthToken
  = lens _vgOauthToken (\ s a -> s{_vgOauthToken = a})

vgUserLibraryConsistentRead :: Lens' VolumesGet' (Maybe Bool)
vgUserLibraryConsistentRead
  = lens _vgUserLibraryConsistentRead
      (\ s a -> s{_vgUserLibraryConsistentRead = a})

-- | Selector specifying which fields to include in a partial response.
vgFields :: Lens' VolumesGet' (Maybe Text)
vgFields = lens _vgFields (\ s a -> s{_vgFields = a})

-- | Data format for the response.
vgAlt :: Lens' VolumesGet' Alt
vgAlt = lens _vgAlt (\ s a -> s{_vgAlt = a})

instance GoogleRequest VolumesGet' where
        type Rs VolumesGet' = Volume
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesGet'{..}
          = go _vgQuotaUser (Just _vgPrettyPrint) _vgCountry
              _vgUserIp
              _vgPartner
              _vgKey
              _vgVolumeId
              _vgSource
              _vgProjection
              _vgOauthToken
              _vgUserLibraryConsistentRead
              _vgFields
              (Just _vgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy VolumesGetResource)
                      r
                      u
