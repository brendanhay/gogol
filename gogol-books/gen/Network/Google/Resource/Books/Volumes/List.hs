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
-- Module      : Network.Google.Resource.Books.Volumes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Performs a book search.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesList@.
module Network.Google.Resource.Books.Volumes.List
    (
    -- * REST Resource
      VolumesListResource

    -- * Creating a Request
    , volumesList'
    , VolumesList'

    -- * Request Lenses
    , vlQuotaUser
    , vlPrettyPrint
    , vlOrderBy
    , vlUserIP
    , vlLibraryRestrict
    , vlPartner
    , vlQ
    , vlDownload
    , vlKey
    , vlSource
    , vlProjection
    , vlFilter
    , vlLangRestrict
    , vlOAuthToken
    , vlStartIndex
    , vlMaxResults
    , vlShowPreOrders
    , vlPrintType
    , vlFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesList@ which the
-- 'VolumesList'' request conforms to.
type VolumesListResource =
     "volumes" :>
       QueryParam "q" Text :>
         QueryParam "orderBy" VolumesListOrderBy :>
           QueryParam "libraryRestrict"
             VolumesListLibraryRestrict
             :>
             QueryParam "partner" Text :>
               QueryParam "download" VolumesListDownload :>
                 QueryParam "source" Text :>
                   QueryParam "projection" VolumesListProjection :>
                     QueryParam "filter" VolumesListFilter :>
                       QueryParam "langRestrict" Text :>
                         QueryParam "startIndex" Word32 :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "showPreorders" Bool :>
                               QueryParam "printType" VolumesListPrintType :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "userIp" Text :>
                                       QueryParam "fields" Text :>
                                         QueryParam "key" AuthKey :>
                                           QueryParam "oauth_token" OAuthToken
                                             :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] Volumes

-- | Performs a book search.
--
-- /See:/ 'volumesList'' smart constructor.
data VolumesList' = VolumesList'
    { _vlQuotaUser       :: !(Maybe Text)
    , _vlPrettyPrint     :: !Bool
    , _vlOrderBy         :: !(Maybe VolumesListOrderBy)
    , _vlUserIP          :: !(Maybe Text)
    , _vlLibraryRestrict :: !(Maybe VolumesListLibraryRestrict)
    , _vlPartner         :: !(Maybe Text)
    , _vlQ               :: !Text
    , _vlDownload        :: !(Maybe VolumesListDownload)
    , _vlKey             :: !(Maybe AuthKey)
    , _vlSource          :: !(Maybe Text)
    , _vlProjection      :: !(Maybe VolumesListProjection)
    , _vlFilter          :: !(Maybe VolumesListFilter)
    , _vlLangRestrict    :: !(Maybe Text)
    , _vlOAuthToken      :: !(Maybe OAuthToken)
    , _vlStartIndex      :: !(Maybe Word32)
    , _vlMaxResults      :: !(Maybe Word32)
    , _vlShowPreOrders   :: !(Maybe Bool)
    , _vlPrintType       :: !(Maybe VolumesListPrintType)
    , _vlFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlQuotaUser'
--
-- * 'vlPrettyPrint'
--
-- * 'vlOrderBy'
--
-- * 'vlUserIP'
--
-- * 'vlLibraryRestrict'
--
-- * 'vlPartner'
--
-- * 'vlQ'
--
-- * 'vlDownload'
--
-- * 'vlKey'
--
-- * 'vlSource'
--
-- * 'vlProjection'
--
-- * 'vlFilter'
--
-- * 'vlLangRestrict'
--
-- * 'vlOAuthToken'
--
-- * 'vlStartIndex'
--
-- * 'vlMaxResults'
--
-- * 'vlShowPreOrders'
--
-- * 'vlPrintType'
--
-- * 'vlFields'
volumesList'
    :: Text -- ^ 'q'
    -> VolumesList'
volumesList' pVlQ_ =
    VolumesList'
    { _vlQuotaUser = Nothing
    , _vlPrettyPrint = True
    , _vlOrderBy = Nothing
    , _vlUserIP = Nothing
    , _vlLibraryRestrict = Nothing
    , _vlPartner = Nothing
    , _vlQ = pVlQ_
    , _vlDownload = Nothing
    , _vlKey = Nothing
    , _vlSource = Nothing
    , _vlProjection = Nothing
    , _vlFilter = Nothing
    , _vlLangRestrict = Nothing
    , _vlOAuthToken = Nothing
    , _vlStartIndex = Nothing
    , _vlMaxResults = Nothing
    , _vlShowPreOrders = Nothing
    , _vlPrintType = Nothing
    , _vlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vlQuotaUser :: Lens' VolumesList' (Maybe Text)
vlQuotaUser
  = lens _vlQuotaUser (\ s a -> s{_vlQuotaUser = a})

-- | Returns response with indentations and line breaks.
vlPrettyPrint :: Lens' VolumesList' Bool
vlPrettyPrint
  = lens _vlPrettyPrint
      (\ s a -> s{_vlPrettyPrint = a})

-- | Sort search results.
vlOrderBy :: Lens' VolumesList' (Maybe VolumesListOrderBy)
vlOrderBy
  = lens _vlOrderBy (\ s a -> s{_vlOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vlUserIP :: Lens' VolumesList' (Maybe Text)
vlUserIP = lens _vlUserIP (\ s a -> s{_vlUserIP = a})

-- | Restrict search to this user\'s library.
vlLibraryRestrict :: Lens' VolumesList' (Maybe VolumesListLibraryRestrict)
vlLibraryRestrict
  = lens _vlLibraryRestrict
      (\ s a -> s{_vlLibraryRestrict = a})

-- | Restrict and brand results for partner ID.
vlPartner :: Lens' VolumesList' (Maybe Text)
vlPartner
  = lens _vlPartner (\ s a -> s{_vlPartner = a})

-- | Full-text search query string.
vlQ :: Lens' VolumesList' Text
vlQ = lens _vlQ (\ s a -> s{_vlQ = a})

-- | Restrict to volumes by download availability.
vlDownload :: Lens' VolumesList' (Maybe VolumesListDownload)
vlDownload
  = lens _vlDownload (\ s a -> s{_vlDownload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vlKey :: Lens' VolumesList' (Maybe AuthKey)
vlKey = lens _vlKey (\ s a -> s{_vlKey = a})

-- | String to identify the originator of this request.
vlSource :: Lens' VolumesList' (Maybe Text)
vlSource = lens _vlSource (\ s a -> s{_vlSource = a})

-- | Restrict information returned to a set of selected fields.
vlProjection :: Lens' VolumesList' (Maybe VolumesListProjection)
vlProjection
  = lens _vlProjection (\ s a -> s{_vlProjection = a})

-- | Filter search results.
vlFilter :: Lens' VolumesList' (Maybe VolumesListFilter)
vlFilter = lens _vlFilter (\ s a -> s{_vlFilter = a})

-- | Restrict results to books with this language code.
vlLangRestrict :: Lens' VolumesList' (Maybe Text)
vlLangRestrict
  = lens _vlLangRestrict
      (\ s a -> s{_vlLangRestrict = a})

-- | OAuth 2.0 token for the current user.
vlOAuthToken :: Lens' VolumesList' (Maybe OAuthToken)
vlOAuthToken
  = lens _vlOAuthToken (\ s a -> s{_vlOAuthToken = a})

-- | Index of the first result to return (starts at 0)
vlStartIndex :: Lens' VolumesList' (Maybe Word32)
vlStartIndex
  = lens _vlStartIndex (\ s a -> s{_vlStartIndex = a})

-- | Maximum number of results to return.
vlMaxResults :: Lens' VolumesList' (Maybe Word32)
vlMaxResults
  = lens _vlMaxResults (\ s a -> s{_vlMaxResults = a})

-- | Set to true to show books available for preorder. Defaults to false.
vlShowPreOrders :: Lens' VolumesList' (Maybe Bool)
vlShowPreOrders
  = lens _vlShowPreOrders
      (\ s a -> s{_vlShowPreOrders = a})

-- | Restrict to books or magazines.
vlPrintType :: Lens' VolumesList' (Maybe VolumesListPrintType)
vlPrintType
  = lens _vlPrintType (\ s a -> s{_vlPrintType = a})

-- | Selector specifying which fields to include in a partial response.
vlFields :: Lens' VolumesList' (Maybe Text)
vlFields = lens _vlFields (\ s a -> s{_vlFields = a})

instance GoogleAuth VolumesList' where
        authKey = vlKey . _Just
        authToken = vlOAuthToken . _Just

instance GoogleRequest VolumesList' where
        type Rs VolumesList' = Volumes
        request = requestWith booksRequest
        requestWith rq VolumesList'{..}
          = go (Just _vlQ) _vlOrderBy _vlLibraryRestrict
              _vlPartner
              _vlDownload
              _vlSource
              _vlProjection
              _vlFilter
              _vlLangRestrict
              _vlStartIndex
              _vlMaxResults
              _vlShowPreOrders
              _vlPrintType
              _vlQuotaUser
              (Just _vlPrettyPrint)
              _vlUserIP
              _vlFields
              _vlKey
              _vlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy VolumesListResource) rq
