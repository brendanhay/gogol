{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Mylibrary.Annotations.Summary
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the summary of specified layers.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.mylibrary.annotations.summary@.
module Network.Google.API.Books.Mylibrary.Annotations.Summary
    (
    -- * REST Resource
      MylibraryAnnotationsSummaryAPI

    -- * Creating a Request
    , mylibraryAnnotationsSummary'
    , MylibraryAnnotationsSummary'

    -- * Request Lenses
    , masQuotaUser
    , masPrettyPrint
    , masUserIp
    , masKey
    , masLayerIds
    , masVolumeId
    , masOauthToken
    , masFields
    , masAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.mylibrary.annotations.summary which the
-- 'MylibraryAnnotationsSummary'' request conforms to.
type MylibraryAnnotationsSummaryAPI =
     "mylibrary" :>
       "annotations" :>
         "summary" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "layerIds" Text :>
                     QueryParam "volumeId" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Post '[JSON] AnnotationsSummary

-- | Gets the summary of specified layers.
--
-- /See:/ 'mylibraryAnnotationsSummary'' smart constructor.
data MylibraryAnnotationsSummary' = MylibraryAnnotationsSummary'
    { _masQuotaUser   :: !(Maybe Text)
    , _masPrettyPrint :: !Bool
    , _masUserIp      :: !(Maybe Text)
    , _masKey         :: !(Maybe Text)
    , _masLayerIds    :: !Text
    , _masVolumeId    :: !Text
    , _masOauthToken  :: !(Maybe Text)
    , _masFields      :: !(Maybe Text)
    , _masAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryAnnotationsSummary'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'masQuotaUser'
--
-- * 'masPrettyPrint'
--
-- * 'masUserIp'
--
-- * 'masKey'
--
-- * 'masLayerIds'
--
-- * 'masVolumeId'
--
-- * 'masOauthToken'
--
-- * 'masFields'
--
-- * 'masAlt'
mylibraryAnnotationsSummary'
    :: Text -- ^ 'layerIds'
    -> Text -- ^ 'volumeId'
    -> MylibraryAnnotationsSummary'
mylibraryAnnotationsSummary' pMasLayerIds_ pMasVolumeId_ =
    MylibraryAnnotationsSummary'
    { _masQuotaUser = Nothing
    , _masPrettyPrint = True
    , _masUserIp = Nothing
    , _masKey = Nothing
    , _masLayerIds = pMasLayerIds_
    , _masVolumeId = pMasVolumeId_
    , _masOauthToken = Nothing
    , _masFields = Nothing
    , _masAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
masQuotaUser :: Lens' MylibraryAnnotationsSummary' (Maybe Text)
masQuotaUser
  = lens _masQuotaUser (\ s a -> s{_masQuotaUser = a})

-- | Returns response with indentations and line breaks.
masPrettyPrint :: Lens' MylibraryAnnotationsSummary' Bool
masPrettyPrint
  = lens _masPrettyPrint
      (\ s a -> s{_masPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
masUserIp :: Lens' MylibraryAnnotationsSummary' (Maybe Text)
masUserIp
  = lens _masUserIp (\ s a -> s{_masUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
masKey :: Lens' MylibraryAnnotationsSummary' (Maybe Text)
masKey = lens _masKey (\ s a -> s{_masKey = a})

-- | Array of layer IDs to get the summary for.
masLayerIds :: Lens' MylibraryAnnotationsSummary' Text
masLayerIds
  = lens _masLayerIds (\ s a -> s{_masLayerIds = a})

-- | Volume id to get the summary for.
masVolumeId :: Lens' MylibraryAnnotationsSummary' Text
masVolumeId
  = lens _masVolumeId (\ s a -> s{_masVolumeId = a})

-- | OAuth 2.0 token for the current user.
masOauthToken :: Lens' MylibraryAnnotationsSummary' (Maybe Text)
masOauthToken
  = lens _masOauthToken
      (\ s a -> s{_masOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
masFields :: Lens' MylibraryAnnotationsSummary' (Maybe Text)
masFields
  = lens _masFields (\ s a -> s{_masFields = a})

-- | Data format for the response.
masAlt :: Lens' MylibraryAnnotationsSummary' Alt
masAlt = lens _masAlt (\ s a -> s{_masAlt = a})

instance GoogleRequest MylibraryAnnotationsSummary'
         where
        type Rs MylibraryAnnotationsSummary' =
             AnnotationsSummary
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MylibraryAnnotationsSummary'{..}
          = go _masQuotaUser (Just _masPrettyPrint) _masUserIp
              _masKey
              (Just _masLayerIds)
              (Just _masVolumeId)
              _masOauthToken
              _masFields
              (Just _masAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MylibraryAnnotationsSummaryAPI)
                      r
                      u
