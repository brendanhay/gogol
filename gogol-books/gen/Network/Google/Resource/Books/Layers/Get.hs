{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Layers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the layer summary for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksLayersGet@.
module Books.Layers.Get
    (
    -- * REST Resource
      LayersGetAPI

    -- * Creating a Request
    , layersGet
    , LayersGet

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgUserIp
    , lgContentVersion
    , lgKey
    , lgVolumeId
    , lgSource
    , lgOauthToken
    , lgFields
    , lgSummaryId
    , lgAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersGet@ which the
-- 'LayersGet' request conforms to.
type LayersGetAPI =
     "volumes" :>
       Capture "volumeId" Text :>
         "layersummary" :>
           Capture "summaryId" Text :>
             QueryParam "contentVersion" Text :>
               QueryParam "source" Text :> Get '[JSON] Layersummary

-- | Gets the layer summary for a volume.
--
-- /See:/ 'layersGet' smart constructor.
data LayersGet = LayersGet
    { _lgQuotaUser      :: !(Maybe Text)
    , _lgPrettyPrint    :: !Bool
    , _lgUserIp         :: !(Maybe Text)
    , _lgContentVersion :: !(Maybe Text)
    , _lgKey            :: !(Maybe Text)
    , _lgVolumeId       :: !Text
    , _lgSource         :: !(Maybe Text)
    , _lgOauthToken     :: !(Maybe Text)
    , _lgFields         :: !(Maybe Text)
    , _lgSummaryId      :: !Text
    , _lgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgQuotaUser'
--
-- * 'lgPrettyPrint'
--
-- * 'lgUserIp'
--
-- * 'lgContentVersion'
--
-- * 'lgKey'
--
-- * 'lgVolumeId'
--
-- * 'lgSource'
--
-- * 'lgOauthToken'
--
-- * 'lgFields'
--
-- * 'lgSummaryId'
--
-- * 'lgAlt'
layersGet
    :: Text -- ^ 'volumeId'
    -> Text -- ^ 'summaryId'
    -> LayersGet
layersGet pLgVolumeId_ pLgSummaryId_ =
    LayersGet
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgUserIp = Nothing
    , _lgContentVersion = Nothing
    , _lgKey = Nothing
    , _lgVolumeId = pLgVolumeId_
    , _lgSource = Nothing
    , _lgOauthToken = Nothing
    , _lgFields = Nothing
    , _lgSummaryId = pLgSummaryId_
    , _lgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lgQuotaUser :: Lens' LayersGet' (Maybe Text)
lgQuotaUser
  = lens _lgQuotaUser (\ s a -> s{_lgQuotaUser = a})

-- | Returns response with indentations and line breaks.
lgPrettyPrint :: Lens' LayersGet' Bool
lgPrettyPrint
  = lens _lgPrettyPrint
      (\ s a -> s{_lgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lgUserIp :: Lens' LayersGet' (Maybe Text)
lgUserIp = lens _lgUserIp (\ s a -> s{_lgUserIp = a})

-- | The content version for the requested volume.
lgContentVersion :: Lens' LayersGet' (Maybe Text)
lgContentVersion
  = lens _lgContentVersion
      (\ s a -> s{_lgContentVersion = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LayersGet' (Maybe Text)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | The volume to retrieve layers for.
lgVolumeId :: Lens' LayersGet' Text
lgVolumeId
  = lens _lgVolumeId (\ s a -> s{_lgVolumeId = a})

-- | String to identify the originator of this request.
lgSource :: Lens' LayersGet' (Maybe Text)
lgSource = lens _lgSource (\ s a -> s{_lgSource = a})

-- | OAuth 2.0 token for the current user.
lgOauthToken :: Lens' LayersGet' (Maybe Text)
lgOauthToken
  = lens _lgOauthToken (\ s a -> s{_lgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LayersGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

-- | The ID for the layer to get the summary for.
lgSummaryId :: Lens' LayersGet' Text
lgSummaryId
  = lens _lgSummaryId (\ s a -> s{_lgSummaryId = a})

-- | Data format for the response.
lgAlt :: Lens' LayersGet' Text
lgAlt = lens _lgAlt (\ s a -> s{_lgAlt = a})

instance GoogleRequest LayersGet' where
        type Rs LayersGet' = Layersummary
        request = requestWithRoute defReq booksURL
        requestWithRoute r u LayersGet{..}
          = go _lgQuotaUser _lgPrettyPrint _lgUserIp
              _lgContentVersion
              _lgKey
              _lgVolumeId
              _lgSource
              _lgOauthToken
              _lgFields
              _lgSummaryId
              _lgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LayersGetAPI) r u
