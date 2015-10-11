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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates read group sets by asynchronously importing the provided
-- information. The caller must have WRITE permissions to the dataset. ##
-- Notes on [BAM](https:\/\/samtools.github.io\/hts-specs\/SAMv1.pdf)
-- import - Tags will be converted to strings - tag types are not preserved
-- - Comments (\`\'CO\`) in the input file header will not be preserved -
-- Original header order of references (\`\'SQ\`) will not be preserved -
-- Any reverse stranded unmapped reads will be reverse complemented, and
-- their qualities (and \"BQ\" tag, if any) will be reversed - Unmapped
-- reads will be stripped of positional information (reference name and
-- position)
--
-- /See:/ < Genomics API Reference> for @GenomicsReadgroupsetsImport@.
module Network.Google.Resource.Genomics.Readgroupsets.Import
    (
    -- * REST Resource
      ReadgroupsetsImportResource

    -- * Creating a Request
    , readgroupsetsImport'
    , ReadgroupsetsImport'

    -- * Request Lenses
    , riXgafv
    , riQuotaUser
    , riPrettyPrint
    , riUploadProtocol
    , riPp
    , riAccessToken
    , riUploadType
    , riPayload
    , riBearerToken
    , riKey
    , riOAuthToken
    , riFields
    , riCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsImport@ method which the
-- 'ReadgroupsetsImport'' request conforms to.
type ReadgroupsetsImportResource =
     "v1" :>
       "readgroupsets:import" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ImportReadGroupSetsRequest :>
                                     Post '[JSON] Operation

-- | Creates read group sets by asynchronously importing the provided
-- information. The caller must have WRITE permissions to the dataset. ##
-- Notes on [BAM](https:\/\/samtools.github.io\/hts-specs\/SAMv1.pdf)
-- import - Tags will be converted to strings - tag types are not preserved
-- - Comments (\`\'CO\`) in the input file header will not be preserved -
-- Original header order of references (\`\'SQ\`) will not be preserved -
-- Any reverse stranded unmapped reads will be reverse complemented, and
-- their qualities (and \"BQ\" tag, if any) will be reversed - Unmapped
-- reads will be stripped of positional information (reference name and
-- position)
--
-- /See:/ 'readgroupsetsImport'' smart constructor.
data ReadgroupsetsImport' = ReadgroupsetsImport'
    { _riXgafv          :: !(Maybe Text)
    , _riQuotaUser      :: !(Maybe Text)
    , _riPrettyPrint    :: !Bool
    , _riUploadProtocol :: !(Maybe Text)
    , _riPp             :: !Bool
    , _riAccessToken    :: !(Maybe Text)
    , _riUploadType     :: !(Maybe Text)
    , _riPayload        :: !ImportReadGroupSetsRequest
    , _riBearerToken    :: !(Maybe Text)
    , _riKey            :: !(Maybe AuthKey)
    , _riOAuthToken     :: !(Maybe OAuthToken)
    , _riFields         :: !(Maybe Text)
    , _riCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riXgafv'
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riUploadProtocol'
--
-- * 'riPp'
--
-- * 'riAccessToken'
--
-- * 'riUploadType'
--
-- * 'riPayload'
--
-- * 'riBearerToken'
--
-- * 'riKey'
--
-- * 'riOAuthToken'
--
-- * 'riFields'
--
-- * 'riCallback'
readgroupsetsImport'
    :: ImportReadGroupSetsRequest -- ^ 'payload'
    -> ReadgroupsetsImport'
readgroupsetsImport' pRiPayload_ =
    ReadgroupsetsImport'
    { _riXgafv = Nothing
    , _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riUploadProtocol = Nothing
    , _riPp = True
    , _riAccessToken = Nothing
    , _riUploadType = Nothing
    , _riPayload = pRiPayload_
    , _riBearerToken = Nothing
    , _riKey = Nothing
    , _riOAuthToken = Nothing
    , _riFields = Nothing
    , _riCallback = Nothing
    }

-- | V1 error format.
riXgafv :: Lens' ReadgroupsetsImport' (Maybe Text)
riXgafv = lens _riXgafv (\ s a -> s{_riXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
riQuotaUser :: Lens' ReadgroupsetsImport' (Maybe Text)
riQuotaUser
  = lens _riQuotaUser (\ s a -> s{_riQuotaUser = a})

-- | Returns response with indentations and line breaks.
riPrettyPrint :: Lens' ReadgroupsetsImport' Bool
riPrettyPrint
  = lens _riPrettyPrint
      (\ s a -> s{_riPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
riUploadProtocol :: Lens' ReadgroupsetsImport' (Maybe Text)
riUploadProtocol
  = lens _riUploadProtocol
      (\ s a -> s{_riUploadProtocol = a})

-- | Pretty-print response.
riPp :: Lens' ReadgroupsetsImport' Bool
riPp = lens _riPp (\ s a -> s{_riPp = a})

-- | OAuth access token.
riAccessToken :: Lens' ReadgroupsetsImport' (Maybe Text)
riAccessToken
  = lens _riAccessToken
      (\ s a -> s{_riAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
riUploadType :: Lens' ReadgroupsetsImport' (Maybe Text)
riUploadType
  = lens _riUploadType (\ s a -> s{_riUploadType = a})

-- | Multipart request metadata.
riPayload :: Lens' ReadgroupsetsImport' ImportReadGroupSetsRequest
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | OAuth bearer token.
riBearerToken :: Lens' ReadgroupsetsImport' (Maybe Text)
riBearerToken
  = lens _riBearerToken
      (\ s a -> s{_riBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' ReadgroupsetsImport' (Maybe AuthKey)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | OAuth 2.0 token for the current user.
riOAuthToken :: Lens' ReadgroupsetsImport' (Maybe OAuthToken)
riOAuthToken
  = lens _riOAuthToken (\ s a -> s{_riOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' ReadgroupsetsImport' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

-- | JSONP
riCallback :: Lens' ReadgroupsetsImport' (Maybe Text)
riCallback
  = lens _riCallback (\ s a -> s{_riCallback = a})

instance GoogleAuth ReadgroupsetsImport' where
        _AuthKey = riKey . _Just
        _AuthToken = riOAuthToken . _Just

instance GoogleRequest ReadgroupsetsImport' where
        type Rs ReadgroupsetsImport' = Operation
        request = requestWith genomicsRequest
        requestWith rq ReadgroupsetsImport'{..}
          = go _riXgafv _riUploadProtocol (Just _riPp)
              _riAccessToken
              _riUploadType
              _riBearerToken
              _riCallback
              _riQuotaUser
              (Just _riPrettyPrint)
              _riFields
              _riKey
              _riOAuthToken
              (Just AltJSON)
              _riPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ReadgroupsetsImportResource)
                      rq
