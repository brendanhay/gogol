{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AcceleratedMobilePageURL.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AcceleratedMobilePageURL.Types.Product where

import           Network.Google.AcceleratedMobilePageURL.Types.Sum
import           Network.Google.Prelude

-- | AMP URL Error resource for a requested URL that couldn\'t be found.
--
-- /See:/ 'ampURLError' smart constructor.
data AmpURLError =
  AmpURLError'
    { _aueOriginalURL  :: !(Maybe Text)
    , _aueErrorCode    :: !(Maybe AmpURLErrorErrorCode)
    , _aueErrorMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AmpURLError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aueOriginalURL'
--
-- * 'aueErrorCode'
--
-- * 'aueErrorMessage'
ampURLError
    :: AmpURLError
ampURLError =
  AmpURLError'
    { _aueOriginalURL = Nothing
    , _aueErrorCode = Nothing
    , _aueErrorMessage = Nothing
    }

-- | The original non-AMP URL.
aueOriginalURL :: Lens' AmpURLError (Maybe Text)
aueOriginalURL
  = lens _aueOriginalURL
      (\ s a -> s{_aueOriginalURL = a})

-- | The error code of an API call.
aueErrorCode :: Lens' AmpURLError (Maybe AmpURLErrorErrorCode)
aueErrorCode
  = lens _aueErrorCode (\ s a -> s{_aueErrorCode = a})

-- | An optional descriptive error message.
aueErrorMessage :: Lens' AmpURLError (Maybe Text)
aueErrorMessage
  = lens _aueErrorMessage
      (\ s a -> s{_aueErrorMessage = a})

instance FromJSON AmpURLError where
        parseJSON
          = withObject "AmpURLError"
              (\ o ->
                 AmpURLError' <$>
                   (o .:? "originalUrl") <*> (o .:? "errorCode") <*>
                     (o .:? "errorMessage"))

instance ToJSON AmpURLError where
        toJSON AmpURLError'{..}
          = object
              (catMaybes
                 [("originalUrl" .=) <$> _aueOriginalURL,
                  ("errorCode" .=) <$> _aueErrorCode,
                  ("errorMessage" .=) <$> _aueErrorMessage])

-- | Batch AMP URL response.
--
-- /See:/ 'batchGetAmpURLsResponse' smart constructor.
data BatchGetAmpURLsResponse =
  BatchGetAmpURLsResponse'
    { _bgaurAmpURLs   :: !(Maybe [AmpURL])
    , _bgaurURLErrors :: !(Maybe [AmpURLError])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetAmpURLsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgaurAmpURLs'
--
-- * 'bgaurURLErrors'
batchGetAmpURLsResponse
    :: BatchGetAmpURLsResponse
batchGetAmpURLsResponse =
  BatchGetAmpURLsResponse' {_bgaurAmpURLs = Nothing, _bgaurURLErrors = Nothing}

-- | For each URL in BatchAmpUrlsRequest, the URL response. The response
-- might not be in the same order as URLs in the batch request. If
-- BatchAmpUrlsRequest contains duplicate URLs, AmpUrl is generated only
-- once.
bgaurAmpURLs :: Lens' BatchGetAmpURLsResponse [AmpURL]
bgaurAmpURLs
  = lens _bgaurAmpURLs (\ s a -> s{_bgaurAmpURLs = a})
      . _Default
      . _Coerce

-- | The errors for requested URLs that have no AMP URL.
bgaurURLErrors :: Lens' BatchGetAmpURLsResponse [AmpURLError]
bgaurURLErrors
  = lens _bgaurURLErrors
      (\ s a -> s{_bgaurURLErrors = a})
      . _Default
      . _Coerce

instance FromJSON BatchGetAmpURLsResponse where
        parseJSON
          = withObject "BatchGetAmpURLsResponse"
              (\ o ->
                 BatchGetAmpURLsResponse' <$>
                   (o .:? "ampUrls" .!= mempty) <*>
                     (o .:? "urlErrors" .!= mempty))

instance ToJSON BatchGetAmpURLsResponse where
        toJSON BatchGetAmpURLsResponse'{..}
          = object
              (catMaybes
                 [("ampUrls" .=) <$> _bgaurAmpURLs,
                  ("urlErrors" .=) <$> _bgaurURLErrors])

-- | AMP URL request for a batch of URLs.
--
-- /See:/ 'batchGetAmpURLsRequest' smart constructor.
data BatchGetAmpURLsRequest =
  BatchGetAmpURLsRequest'
    { _bgaurURLs           :: !(Maybe [Text])
    , _bgaurLookupStrategy :: !(Maybe BatchGetAmpURLsRequestLookupStrategy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetAmpURLsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgaurURLs'
--
-- * 'bgaurLookupStrategy'
batchGetAmpURLsRequest
    :: BatchGetAmpURLsRequest
batchGetAmpURLsRequest =
  BatchGetAmpURLsRequest' {_bgaurURLs = Nothing, _bgaurLookupStrategy = Nothing}

-- | List of URLs to look up for the paired AMP URLs. The URLs are
-- case-sensitive. Up to 50 URLs per lookup (see [Usage
-- Limits](\/amp\/cache\/reference\/limits)).
bgaurURLs :: Lens' BatchGetAmpURLsRequest [Text]
bgaurURLs
  = lens _bgaurURLs (\ s a -> s{_bgaurURLs = a}) .
      _Default
      . _Coerce

-- | The lookup_strategy being requested.
bgaurLookupStrategy :: Lens' BatchGetAmpURLsRequest (Maybe BatchGetAmpURLsRequestLookupStrategy)
bgaurLookupStrategy
  = lens _bgaurLookupStrategy
      (\ s a -> s{_bgaurLookupStrategy = a})

instance FromJSON BatchGetAmpURLsRequest where
        parseJSON
          = withObject "BatchGetAmpURLsRequest"
              (\ o ->
                 BatchGetAmpURLsRequest' <$>
                   (o .:? "urls" .!= mempty) <*>
                     (o .:? "lookupStrategy"))

instance ToJSON BatchGetAmpURLsRequest where
        toJSON BatchGetAmpURLsRequest'{..}
          = object
              (catMaybes
                 [("urls" .=) <$> _bgaurURLs,
                  ("lookupStrategy" .=) <$> _bgaurLookupStrategy])

-- | AMP URL response for a requested URL.
--
-- /See:/ 'ampURL' smart constructor.
data AmpURL =
  AmpURL'
    { _auOriginalURL :: !(Maybe Text)
    , _auAmpURL      :: !(Maybe Text)
    , _auCdnAmpURL   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AmpURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auOriginalURL'
--
-- * 'auAmpURL'
--
-- * 'auCdnAmpURL'
ampURL
    :: AmpURL
ampURL =
  AmpURL'
    {_auOriginalURL = Nothing, _auAmpURL = Nothing, _auCdnAmpURL = Nothing}

-- | The original non-AMP URL.
auOriginalURL :: Lens' AmpURL (Maybe Text)
auOriginalURL
  = lens _auOriginalURL
      (\ s a -> s{_auOriginalURL = a})

-- | The AMP URL pointing to the publisher\'s web server.
auAmpURL :: Lens' AmpURL (Maybe Text)
auAmpURL = lens _auAmpURL (\ s a -> s{_auAmpURL = a})

-- | The [AMP Cache URL](\/amp\/cache\/overview#amp-cache-url-format)
-- pointing to the cached document in the Google AMP Cache.
auCdnAmpURL :: Lens' AmpURL (Maybe Text)
auCdnAmpURL
  = lens _auCdnAmpURL (\ s a -> s{_auCdnAmpURL = a})

instance FromJSON AmpURL where
        parseJSON
          = withObject "AmpURL"
              (\ o ->
                 AmpURL' <$>
                   (o .:? "originalUrl") <*> (o .:? "ampUrl") <*>
                     (o .:? "cdnAmpUrl"))

instance ToJSON AmpURL where
        toJSON AmpURL'{..}
          = object
              (catMaybes
                 [("originalUrl" .=) <$> _auOriginalURL,
                  ("ampUrl" .=) <$> _auAmpURL,
                  ("cdnAmpUrl" .=) <$> _auCdnAmpURL])
