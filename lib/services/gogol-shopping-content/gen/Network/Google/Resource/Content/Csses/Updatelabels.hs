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
-- Module      : Network.Google.Resource.Content.Csses.Updatelabels
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates labels that are assigned to a CSS domain by its CSS group.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.csses.updatelabels@.
module Network.Google.Resource.Content.Csses.Updatelabels
    (
    -- * REST Resource
      CssesUpdatelabelsResource

    -- * Creating a Request
    , cssesUpdatelabels
    , CssesUpdatelabels

    -- * Request Lenses
    , cuXgafv
    , cuUploadProtocol
    , cuAccessToken
    , cuUploadType
    , cuCssDomainId
    , cuPayload
    , cuCssGroupId
    , cuCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.csses.updatelabels@ method which the
-- 'CssesUpdatelabels' request conforms to.
type CssesUpdatelabelsResource =
     "content" :>
       "v2.1" :>
         Capture "cssGroupId" (Textual Int64) :>
           "csses" :>
             Capture "cssDomainId" (Textual Int64) :>
               "updatelabels" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LabelIds :> Post '[JSON] Css

-- | Updates labels that are assigned to a CSS domain by its CSS group.
--
-- /See:/ 'cssesUpdatelabels' smart constructor.
data CssesUpdatelabels =
  CssesUpdatelabels'
    { _cuXgafv :: !(Maybe Xgafv)
    , _cuUploadProtocol :: !(Maybe Text)
    , _cuAccessToken :: !(Maybe Text)
    , _cuUploadType :: !(Maybe Text)
    , _cuCssDomainId :: !(Textual Int64)
    , _cuPayload :: !LabelIds
    , _cuCssGroupId :: !(Textual Int64)
    , _cuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CssesUpdatelabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuXgafv'
--
-- * 'cuUploadProtocol'
--
-- * 'cuAccessToken'
--
-- * 'cuUploadType'
--
-- * 'cuCssDomainId'
--
-- * 'cuPayload'
--
-- * 'cuCssGroupId'
--
-- * 'cuCallback'
cssesUpdatelabels
    :: Int64 -- ^ 'cuCssDomainId'
    -> LabelIds -- ^ 'cuPayload'
    -> Int64 -- ^ 'cuCssGroupId'
    -> CssesUpdatelabels
cssesUpdatelabels pCuCssDomainId_ pCuPayload_ pCuCssGroupId_ =
  CssesUpdatelabels'
    { _cuXgafv = Nothing
    , _cuUploadProtocol = Nothing
    , _cuAccessToken = Nothing
    , _cuUploadType = Nothing
    , _cuCssDomainId = _Coerce # pCuCssDomainId_
    , _cuPayload = pCuPayload_
    , _cuCssGroupId = _Coerce # pCuCssGroupId_
    , _cuCallback = Nothing
    }


-- | V1 error format.
cuXgafv :: Lens' CssesUpdatelabels (Maybe Xgafv)
cuXgafv = lens _cuXgafv (\ s a -> s{_cuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cuUploadProtocol :: Lens' CssesUpdatelabels (Maybe Text)
cuUploadProtocol
  = lens _cuUploadProtocol
      (\ s a -> s{_cuUploadProtocol = a})

-- | OAuth access token.
cuAccessToken :: Lens' CssesUpdatelabels (Maybe Text)
cuAccessToken
  = lens _cuAccessToken
      (\ s a -> s{_cuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuUploadType :: Lens' CssesUpdatelabels (Maybe Text)
cuUploadType
  = lens _cuUploadType (\ s a -> s{_cuUploadType = a})

-- | Required. The ID of the updated CSS domain.
cuCssDomainId :: Lens' CssesUpdatelabels Int64
cuCssDomainId
  = lens _cuCssDomainId
      (\ s a -> s{_cuCssDomainId = a})
      . _Coerce

-- | Multipart request metadata.
cuPayload :: Lens' CssesUpdatelabels LabelIds
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | Required. The CSS group ID of the updated CSS domain.
cuCssGroupId :: Lens' CssesUpdatelabels Int64
cuCssGroupId
  = lens _cuCssGroupId (\ s a -> s{_cuCssGroupId = a})
      . _Coerce

-- | JSONP
cuCallback :: Lens' CssesUpdatelabels (Maybe Text)
cuCallback
  = lens _cuCallback (\ s a -> s{_cuCallback = a})

instance GoogleRequest CssesUpdatelabels where
        type Rs CssesUpdatelabels = Css
        type Scopes CssesUpdatelabels =
             '["https://www.googleapis.com/auth/content"]
        requestClient CssesUpdatelabels'{..}
          = go _cuCssGroupId _cuCssDomainId _cuXgafv
              _cuUploadProtocol
              _cuAccessToken
              _cuUploadType
              _cuCallback
              (Just AltJSON)
              _cuPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy CssesUpdatelabelsResource)
                      mempty
