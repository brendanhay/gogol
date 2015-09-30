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
    , vlUserIp
    , vlLibraryRestrict
    , vlPartner
    , vlQ
    , vlDownload
    , vlKey
    , vlSource
    , vlProjection
    , vlFilter
    , vlLangRestrict
    , vlOauthToken
    , vlStartIndex
    , vlMaxResults
    , vlShowPreorders
    , vlPrintType
    , vlFields
    , vlAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesList@ which the
-- 'VolumesList'' request conforms to.
type VolumesListResource =
     "volumes" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "orderBy" BooksVolumesListOrderBy :>
             QueryParam "userIp" Text :>
               QueryParam "libraryRestrict"
                 BooksVolumesListLibraryRestrict
                 :>
                 QueryParam "partner" Text :>
                   QueryParam "q" Text :>
                     QueryParam "download" BooksVolumesListDownload :>
                       QueryParam "key" Text :>
                         QueryParam "source" Text :>
                           QueryParam "projection" BooksVolumesListProjection :>
                             QueryParam "filter" BooksVolumesListFilter :>
                               QueryParam "langRestrict" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "startIndex" Word32 :>
                                     QueryParam "maxResults" Word32 :>
                                       QueryParam "showPreorders" Bool :>
                                         QueryParam "printType"
                                           BooksVolumesListPrintType
                                           :>
                                           QueryParam "fields" Text :>
                                             QueryParam "alt" Alt :>
                                               Get '[JSON] Volumes

-- | Performs a book search.
--
-- /See:/ 'volumesList'' smart constructor.
data VolumesList' = VolumesList'
    { _vlQuotaUser       :: !(Maybe Text)
    , _vlPrettyPrint     :: !Bool
    , _vlOrderBy         :: !(Maybe BooksVolumesListOrderBy)
    , _vlUserIp          :: !(Maybe Text)
    , _vlLibraryRestrict :: !(Maybe BooksVolumesListLibraryRestrict)
    , _vlPartner         :: !(Maybe Text)
    , _vlQ               :: !Text
    , _vlDownload        :: !(Maybe BooksVolumesListDownload)
    , _vlKey             :: !(Maybe Text)
    , _vlSource          :: !(Maybe Text)
    , _vlProjection      :: !(Maybe BooksVolumesListProjection)
    , _vlFilter          :: !(Maybe BooksVolumesListFilter)
    , _vlLangRestrict    :: !(Maybe Text)
    , _vlOauthToken      :: !(Maybe Text)
    , _vlStartIndex      :: !(Maybe Word32)
    , _vlMaxResults      :: !(Maybe Word32)
    , _vlShowPreorders   :: !(Maybe Bool)
    , _vlPrintType       :: !(Maybe BooksVolumesListPrintType)
    , _vlFields          :: !(Maybe Text)
    , _vlAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'vlUserIp'
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
-- * 'vlOauthToken'
--
-- * 'vlStartIndex'
--
-- * 'vlMaxResults'
--
-- * 'vlShowPreorders'
--
-- * 'vlPrintType'
--
-- * 'vlFields'
--
-- * 'vlAlt'
volumesList'
    :: Text -- ^ 'q'
    -> VolumesList'
volumesList' pVlQ_ =
    VolumesList'
    { _vlQuotaUser = Nothing
    , _vlPrettyPrint = True
    , _vlOrderBy = Nothing
    , _vlUserIp = Nothing
    , _vlLibraryRestrict = Nothing
    , _vlPartner = Nothing
    , _vlQ = pVlQ_
    , _vlDownload = Nothing
    , _vlKey = Nothing
    , _vlSource = Nothing
    , _vlProjection = Nothing
    , _vlFilter = Nothing
    , _vlLangRestrict = Nothing
    , _vlOauthToken = Nothing
    , _vlStartIndex = Nothing
    , _vlMaxResults = Nothing
    , _vlShowPreorders = Nothing
    , _vlPrintType = Nothing
    , _vlFields = Nothing
    , _vlAlt = JSON
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
vlOrderBy :: Lens' VolumesList' (Maybe BooksVolumesListOrderBy)
vlOrderBy
  = lens _vlOrderBy (\ s a -> s{_vlOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vlUserIp :: Lens' VolumesList' (Maybe Text)
vlUserIp = lens _vlUserIp (\ s a -> s{_vlUserIp = a})

-- | Restrict search to this user\'s library.
vlLibraryRestrict :: Lens' VolumesList' (Maybe BooksVolumesListLibraryRestrict)
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
vlDownload :: Lens' VolumesList' (Maybe BooksVolumesListDownload)
vlDownload
  = lens _vlDownload (\ s a -> s{_vlDownload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vlKey :: Lens' VolumesList' (Maybe Text)
vlKey = lens _vlKey (\ s a -> s{_vlKey = a})

-- | String to identify the originator of this request.
vlSource :: Lens' VolumesList' (Maybe Text)
vlSource = lens _vlSource (\ s a -> s{_vlSource = a})

-- | Restrict information returned to a set of selected fields.
vlProjection :: Lens' VolumesList' (Maybe BooksVolumesListProjection)
vlProjection
  = lens _vlProjection (\ s a -> s{_vlProjection = a})

-- | Filter search results.
vlFilter :: Lens' VolumesList' (Maybe BooksVolumesListFilter)
vlFilter = lens _vlFilter (\ s a -> s{_vlFilter = a})

-- | Restrict results to books with this language code.
vlLangRestrict :: Lens' VolumesList' (Maybe Text)
vlLangRestrict
  = lens _vlLangRestrict
      (\ s a -> s{_vlLangRestrict = a})

-- | OAuth 2.0 token for the current user.
vlOauthToken :: Lens' VolumesList' (Maybe Text)
vlOauthToken
  = lens _vlOauthToken (\ s a -> s{_vlOauthToken = a})

-- | Index of the first result to return (starts at 0)
vlStartIndex :: Lens' VolumesList' (Maybe Word32)
vlStartIndex
  = lens _vlStartIndex (\ s a -> s{_vlStartIndex = a})

-- | Maximum number of results to return.
vlMaxResults :: Lens' VolumesList' (Maybe Word32)
vlMaxResults
  = lens _vlMaxResults (\ s a -> s{_vlMaxResults = a})

-- | Set to true to show books available for preorder. Defaults to false.
vlShowPreorders :: Lens' VolumesList' (Maybe Bool)
vlShowPreorders
  = lens _vlShowPreorders
      (\ s a -> s{_vlShowPreorders = a})

-- | Restrict to books or magazines.
vlPrintType :: Lens' VolumesList' (Maybe BooksVolumesListPrintType)
vlPrintType
  = lens _vlPrintType (\ s a -> s{_vlPrintType = a})

-- | Selector specifying which fields to include in a partial response.
vlFields :: Lens' VolumesList' (Maybe Text)
vlFields = lens _vlFields (\ s a -> s{_vlFields = a})

-- | Data format for the response.
vlAlt :: Lens' VolumesList' Alt
vlAlt = lens _vlAlt (\ s a -> s{_vlAlt = a})

instance GoogleRequest VolumesList' where
        type Rs VolumesList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesList'{..}
          = go _vlQuotaUser (Just _vlPrettyPrint) _vlOrderBy
              _vlUserIp
              _vlLibraryRestrict
              _vlPartner
              (Just _vlQ)
              _vlDownload
              _vlKey
              _vlSource
              _vlProjection
              _vlFilter
              _vlLangRestrict
              _vlOauthToken
              _vlStartIndex
              _vlMaxResults
              _vlShowPreorders
              _vlPrintType
              _vlFields
              (Just _vlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VolumesListResource)
                      r
                      u
