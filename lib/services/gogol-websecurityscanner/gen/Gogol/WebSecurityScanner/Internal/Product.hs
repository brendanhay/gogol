{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.WebSecurityScanner.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.WebSecurityScanner.Internal.Product
  ( -- * Authentication
    Authentication (..),
    newAuthentication,

    -- * CrawledUrl
    CrawledUrl (..),
    newCrawledUrl,

    -- * CustomAccount
    CustomAccount (..),
    newCustomAccount,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Finding
    Finding (..),
    newFinding,

    -- * FindingTypeStats
    FindingTypeStats (..),
    newFindingTypeStats,

    -- * Form
    Form (..),
    newForm,

    -- * GoogleAccount
    GoogleAccount (..),
    newGoogleAccount,

    -- * Header
    Header (..),
    newHeader,

    -- * IapCredential
    IapCredential (..),
    newIapCredential,

    -- * IapTestServiceAccountInfo
    IapTestServiceAccountInfo (..),
    newIapTestServiceAccountInfo,

    -- * ListCrawledUrlsResponse
    ListCrawledUrlsResponse (..),
    newListCrawledUrlsResponse,

    -- * ListFindingTypeStatsResponse
    ListFindingTypeStatsResponse (..),
    newListFindingTypeStatsResponse,

    -- * ListFindingsResponse
    ListFindingsResponse (..),
    newListFindingsResponse,

    -- * ListScanConfigsResponse
    ListScanConfigsResponse (..),
    newListScanConfigsResponse,

    -- * ListScanRunsResponse
    ListScanRunsResponse (..),
    newListScanRunsResponse,

    -- * OutdatedLibrary
    OutdatedLibrary (..),
    newOutdatedLibrary,

    -- * ScanConfig
    ScanConfig (..),
    newScanConfig,

    -- * ScanConfigError
    ScanConfigError (..),
    newScanConfigError,

    -- * ScanRun
    ScanRun (..),
    newScanRun,

    -- * ScanRunErrorTrace
    ScanRunErrorTrace (..),
    newScanRunErrorTrace,

    -- * ScanRunWarningTrace
    ScanRunWarningTrace (..),
    newScanRunWarningTrace,

    -- * Schedule
    Schedule (..),
    newSchedule,

    -- * StartScanRunRequest
    StartScanRunRequest (..),
    newStartScanRunRequest,

    -- * StopScanRunRequest
    StopScanRunRequest (..),
    newStopScanRunRequest,

    -- * ViolatingResource
    ViolatingResource (..),
    newViolatingResource,

    -- * VulnerableHeaders
    VulnerableHeaders (..),
    newVulnerableHeaders,

    -- * VulnerableParameters
    VulnerableParameters (..),
    newVulnerableParameters,

    -- * Xss
    Xss (..),
    newXss,

    -- * Xxe
    Xxe (..),
    newXxe,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebSecurityScanner.Internal.Sum

-- | Scan authentication configuration.
--
-- /See:/ 'newAuthentication' smart constructor.
data Authentication = Authentication
  { -- | Authentication using a custom account.
    customAccount :: (Core.Maybe CustomAccount),
    -- | Authentication using a Google account.
    googleAccount :: (Core.Maybe GoogleAccount),
    -- | Authentication using Identity-Aware-Proxy (IAP).
    iapCredential :: (Core.Maybe IapCredential)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Authentication' with the minimum fields required to make a request.
newAuthentication ::
  Authentication
newAuthentication =
  Authentication
    { customAccount = Core.Nothing,
      googleAccount = Core.Nothing,
      iapCredential = Core.Nothing
    }

instance Core.FromJSON Authentication where
  parseJSON =
    Core.withObject
      "Authentication"
      ( \o ->
          Authentication
            Core.<$> (o Core..:? "customAccount")
            Core.<*> (o Core..:? "googleAccount")
            Core.<*> (o Core..:? "iapCredential")
      )

instance Core.ToJSON Authentication where
  toJSON Authentication {..} =
    Core.object
      ( Core.catMaybes
          [ ("customAccount" Core..=) Core.<$> customAccount,
            ("googleAccount" Core..=) Core.<$> googleAccount,
            ("iapCredential" Core..=) Core.<$> iapCredential
          ]
      )

-- | A CrawledUrl resource represents a URL that was crawled during a ScanRun. Web Security Scanner Service crawls the web applications, following all links within the scope of sites, to find the URLs to test against.
--
-- /See:/ 'newCrawledUrl' smart constructor.
data CrawledUrl = CrawledUrl
  { -- | Output only. The body of the request that was used to visit the URL.
    body :: (Core.Maybe Core.Text),
    -- | Output only. The http method of the request that was used to visit the URL, in uppercase.
    httpMethod :: (Core.Maybe Core.Text),
    -- | Output only. The URL that was crawled.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CrawledUrl' with the minimum fields required to make a request.
newCrawledUrl ::
  CrawledUrl
newCrawledUrl =
  CrawledUrl
    { body = Core.Nothing,
      httpMethod = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON CrawledUrl where
  parseJSON =
    Core.withObject
      "CrawledUrl"
      ( \o ->
          CrawledUrl
            Core.<$> (o Core..:? "body")
            Core.<*> (o Core..:? "httpMethod")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON CrawledUrl where
  toJSON CrawledUrl {..} =
    Core.object
      ( Core.catMaybes
          [ ("body" Core..=) Core.<$> body,
            ("httpMethod" Core..=) Core.<$> httpMethod,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Describes authentication configuration that uses a custom account.
--
-- /See:/ 'newCustomAccount' smart constructor.
data CustomAccount = CustomAccount
  { -- | Required. The login form URL of the website.
    loginUrl :: (Core.Maybe Core.Text),
    -- | Required. Input only. The password of the custom account. The credential is stored encrypted and not returned in any response nor included in audit logs.
    password :: (Core.Maybe Core.Text),
    -- | Required. The user name of the custom account.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomAccount' with the minimum fields required to make a request.
newCustomAccount ::
  CustomAccount
newCustomAccount =
  CustomAccount
    { loginUrl = Core.Nothing,
      password = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON CustomAccount where
  parseJSON =
    Core.withObject
      "CustomAccount"
      ( \o ->
          CustomAccount
            Core.<$> (o Core..:? "loginUrl")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON CustomAccount where
  toJSON CustomAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("loginUrl" Core..=) Core.<$> loginUrl,
            ("password" Core..=) Core.<$> password,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A Finding resource represents a vulnerability instance identified during a ScanRun.
--
-- /See:/ 'newFinding' smart constructor.
data Finding = Finding
  { -- | Output only. The body of the request that triggered the vulnerability.
    body :: (Core.Maybe Core.Text),
    -- | Output only. The description of the vulnerability.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The URL where the browser lands when the vulnerability is detected.
    finalUrl :: (Core.Maybe Core.Text),
    -- | Output only. The type of the Finding. Detailed and up-to-date information on findings can be found here: https:\/\/cloud.google.com\/security-command-center\/docs\/how-to-remediate-web-security-scanner-findings
    findingType :: (Core.Maybe Core.Text),
    -- | Output only. An addon containing information reported for a vulnerability with an HTML form, if any.
    form :: (Core.Maybe Form),
    -- | Output only. If the vulnerability was originated from nested IFrame, the immediate parent IFrame is reported.
    frameUrl :: (Core.Maybe Core.Text),
    -- | Output only. The URL produced by the server-side fuzzer and used in the request that triggered the vulnerability.
    fuzzedUrl :: (Core.Maybe Core.Text),
    -- | Output only. The http method of the request that triggered the vulnerability, in uppercase.
    httpMethod :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the Finding. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanruns\/{scanRunId}\/findings\/{findingId}\'. The finding IDs are generated by the system.
    name :: (Core.Maybe Core.Text),
    -- | Output only. An addon containing information about outdated libraries.
    outdatedLibrary :: (Core.Maybe OutdatedLibrary),
    -- | Output only. The URL containing human-readable payload that user can leverage to reproduce the vulnerability.
    reproductionUrl :: (Core.Maybe Core.Text),
    -- | Output only. The severity level of the reported vulnerability.
    severity :: (Core.Maybe Finding_Severity),
    -- | Output only. The tracking ID uniquely identifies a vulnerability instance across multiple ScanRuns.
    trackingId :: (Core.Maybe Core.Text),
    -- | Output only. An addon containing detailed information regarding any resource causing the vulnerability such as JavaScript sources, image, audio files, etc.
    violatingResource :: (Core.Maybe ViolatingResource),
    -- | Output only. An addon containing information about vulnerable or missing HTTP headers.
    vulnerableHeaders :: (Core.Maybe VulnerableHeaders),
    -- | Output only. An addon containing information about request parameters which were found to be vulnerable.
    vulnerableParameters :: (Core.Maybe VulnerableParameters),
    -- | Output only. An addon containing information reported for an XSS, if any.
    xss :: (Core.Maybe Xss),
    -- | Output only. An addon containing information reported for an XXE, if any.
    xxe :: (Core.Maybe Xxe)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Finding' with the minimum fields required to make a request.
newFinding ::
  Finding
newFinding =
  Finding
    { body = Core.Nothing,
      description = Core.Nothing,
      finalUrl = Core.Nothing,
      findingType = Core.Nothing,
      form = Core.Nothing,
      frameUrl = Core.Nothing,
      fuzzedUrl = Core.Nothing,
      httpMethod = Core.Nothing,
      name = Core.Nothing,
      outdatedLibrary = Core.Nothing,
      reproductionUrl = Core.Nothing,
      severity = Core.Nothing,
      trackingId = Core.Nothing,
      violatingResource = Core.Nothing,
      vulnerableHeaders = Core.Nothing,
      vulnerableParameters = Core.Nothing,
      xss = Core.Nothing,
      xxe = Core.Nothing
    }

instance Core.FromJSON Finding where
  parseJSON =
    Core.withObject
      "Finding"
      ( \o ->
          Finding
            Core.<$> (o Core..:? "body")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "finalUrl")
            Core.<*> (o Core..:? "findingType")
            Core.<*> (o Core..:? "form")
            Core.<*> (o Core..:? "frameUrl")
            Core.<*> (o Core..:? "fuzzedUrl")
            Core.<*> (o Core..:? "httpMethod")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "outdatedLibrary")
            Core.<*> (o Core..:? "reproductionUrl")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "trackingId")
            Core.<*> (o Core..:? "violatingResource")
            Core.<*> (o Core..:? "vulnerableHeaders")
            Core.<*> (o Core..:? "vulnerableParameters")
            Core.<*> (o Core..:? "xss")
            Core.<*> (o Core..:? "xxe")
      )

instance Core.ToJSON Finding where
  toJSON Finding {..} =
    Core.object
      ( Core.catMaybes
          [ ("body" Core..=) Core.<$> body,
            ("description" Core..=) Core.<$> description,
            ("finalUrl" Core..=) Core.<$> finalUrl,
            ("findingType" Core..=) Core.<$> findingType,
            ("form" Core..=) Core.<$> form,
            ("frameUrl" Core..=) Core.<$> frameUrl,
            ("fuzzedUrl" Core..=) Core.<$> fuzzedUrl,
            ("httpMethod" Core..=) Core.<$> httpMethod,
            ("name" Core..=) Core.<$> name,
            ("outdatedLibrary" Core..=) Core.<$> outdatedLibrary,
            ("reproductionUrl" Core..=) Core.<$> reproductionUrl,
            ("severity" Core..=) Core.<$> severity,
            ("trackingId" Core..=) Core.<$> trackingId,
            ("violatingResource" Core..=)
              Core.<$> violatingResource,
            ("vulnerableHeaders" Core..=)
              Core.<$> vulnerableHeaders,
            ("vulnerableParameters" Core..=)
              Core.<$> vulnerableParameters,
            ("xss" Core..=) Core.<$> xss,
            ("xxe" Core..=) Core.<$> xxe
          ]
      )

-- | A FindingTypeStats resource represents stats regarding a specific FindingType of Findings under a given ScanRun.
--
-- /See:/ 'newFindingTypeStats' smart constructor.
data FindingTypeStats = FindingTypeStats
  { -- | Output only. The count of findings belonging to this finding type.
    findingCount :: (Core.Maybe Core.Int32),
    -- | Output only. The finding type associated with the stats.
    findingType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FindingTypeStats' with the minimum fields required to make a request.
newFindingTypeStats ::
  FindingTypeStats
newFindingTypeStats =
  FindingTypeStats {findingCount = Core.Nothing, findingType = Core.Nothing}

instance Core.FromJSON FindingTypeStats where
  parseJSON =
    Core.withObject
      "FindingTypeStats"
      ( \o ->
          FindingTypeStats
            Core.<$> (o Core..:? "findingCount")
            Core.<*> (o Core..:? "findingType")
      )

instance Core.ToJSON FindingTypeStats where
  toJSON FindingTypeStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("findingCount" Core..=) Core.<$> findingCount,
            ("findingType" Core..=) Core.<$> findingType
          ]
      )

-- | ! Information about a vulnerability with an HTML.
--
-- /See:/ 'newForm' smart constructor.
data Form = Form
  { -- | ! The URI where to send the form when it\'s submitted.
    actionUri :: (Core.Maybe Core.Text),
    -- | ! The names of form fields related to the vulnerability.
    fields :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Form' with the minimum fields required to make a request.
newForm ::
  Form
newForm = Form {actionUri = Core.Nothing, fields = Core.Nothing}

instance Core.FromJSON Form where
  parseJSON =
    Core.withObject
      "Form"
      ( \o ->
          Form
            Core.<$> (o Core..:? "actionUri")
            Core.<*> (o Core..:? "fields" Core..!= Core.mempty)
      )

instance Core.ToJSON Form where
  toJSON Form {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionUri" Core..=) Core.<$> actionUri,
            ("fields" Core..=) Core.<$> fields
          ]
      )

-- | Describes authentication configuration that uses a Google account.
--
-- /See:/ 'newGoogleAccount' smart constructor.
data GoogleAccount = GoogleAccount
  { -- | Required. Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.
    password :: (Core.Maybe Core.Text),
    -- | Required. The user name of the Google account.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAccount' with the minimum fields required to make a request.
newGoogleAccount ::
  GoogleAccount
newGoogleAccount =
  GoogleAccount {password = Core.Nothing, username = Core.Nothing}

instance Core.FromJSON GoogleAccount where
  parseJSON =
    Core.withObject
      "GoogleAccount"
      ( \o ->
          GoogleAccount
            Core.<$> (o Core..:? "password")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON GoogleAccount where
  toJSON GoogleAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("password" Core..=) Core.<$> password,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | Describes a HTTP Header.
--
-- /See:/ 'newHeader' smart constructor.
data Header = Header
  { -- | Header name.
    name :: (Core.Maybe Core.Text),
    -- | Header value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Header' with the minimum fields required to make a request.
newHeader ::
  Header
newHeader = Header {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Header where
  parseJSON =
    Core.withObject
      "Header"
      ( \o ->
          Header
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Header where
  toJSON Header {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Describes authentication configuration for Identity-Aware-Proxy (IAP).
--
-- /See:/ 'newIapCredential' smart constructor.
newtype IapCredential = IapCredential
  { -- | Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
    iapTestServiceAccountInfo :: (Core.Maybe IapTestServiceAccountInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IapCredential' with the minimum fields required to make a request.
newIapCredential ::
  IapCredential
newIapCredential = IapCredential {iapTestServiceAccountInfo = Core.Nothing}

instance Core.FromJSON IapCredential where
  parseJSON =
    Core.withObject
      "IapCredential"
      ( \o ->
          IapCredential
            Core.<$> (o Core..:? "iapTestServiceAccountInfo")
      )

instance Core.ToJSON IapCredential where
  toJSON IapCredential {..} =
    Core.object
      ( Core.catMaybes
          [ ("iapTestServiceAccountInfo" Core..=)
              Core.<$> iapTestServiceAccountInfo
          ]
      )

-- | Describes authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
--
-- /See:/ 'newIapTestServiceAccountInfo' smart constructor.
newtype IapTestServiceAccountInfo = IapTestServiceAccountInfo
  { -- | Required. Describes OAuth2 client id of resources protected by Identity-Aware-Proxy (IAP).
    targetAudienceClientId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IapTestServiceAccountInfo' with the minimum fields required to make a request.
newIapTestServiceAccountInfo ::
  IapTestServiceAccountInfo
newIapTestServiceAccountInfo =
  IapTestServiceAccountInfo {targetAudienceClientId = Core.Nothing}

instance Core.FromJSON IapTestServiceAccountInfo where
  parseJSON =
    Core.withObject
      "IapTestServiceAccountInfo"
      ( \o ->
          IapTestServiceAccountInfo
            Core.<$> (o Core..:? "targetAudienceClientId")
      )

instance Core.ToJSON IapTestServiceAccountInfo where
  toJSON IapTestServiceAccountInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("targetAudienceClientId" Core..=)
              Core.<$> targetAudienceClientId
          ]
      )

-- | Response for the @ListCrawledUrls@ method.
--
-- /See:/ 'newListCrawledUrlsResponse' smart constructor.
data ListCrawledUrlsResponse = ListCrawledUrlsResponse
  { -- | The list of CrawledUrls returned.
    crawledUrls :: (Core.Maybe [CrawledUrl]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCrawledUrlsResponse' with the minimum fields required to make a request.
newListCrawledUrlsResponse ::
  ListCrawledUrlsResponse
newListCrawledUrlsResponse =
  ListCrawledUrlsResponse
    { crawledUrls = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListCrawledUrlsResponse where
  parseJSON =
    Core.withObject
      "ListCrawledUrlsResponse"
      ( \o ->
          ListCrawledUrlsResponse
            Core.<$> (o Core..:? "crawledUrls" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListCrawledUrlsResponse where
  toJSON ListCrawledUrlsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("crawledUrls" Core..=) Core.<$> crawledUrls,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response for the @ListFindingTypeStats@ method.
--
-- /See:/ 'newListFindingTypeStatsResponse' smart constructor.
newtype ListFindingTypeStatsResponse = ListFindingTypeStatsResponse
  { -- | The list of FindingTypeStats returned.
    findingTypeStats :: (Core.Maybe [FindingTypeStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFindingTypeStatsResponse' with the minimum fields required to make a request.
newListFindingTypeStatsResponse ::
  ListFindingTypeStatsResponse
newListFindingTypeStatsResponse =
  ListFindingTypeStatsResponse {findingTypeStats = Core.Nothing}

instance Core.FromJSON ListFindingTypeStatsResponse where
  parseJSON =
    Core.withObject
      "ListFindingTypeStatsResponse"
      ( \o ->
          ListFindingTypeStatsResponse
            Core.<$> (o Core..:? "findingTypeStats" Core..!= Core.mempty)
      )

instance Core.ToJSON ListFindingTypeStatsResponse where
  toJSON ListFindingTypeStatsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("findingTypeStats" Core..=)
              Core.<$> findingTypeStats
          ]
      )

-- | Response for the @ListFindings@ method.
--
-- /See:/ 'newListFindingsResponse' smart constructor.
data ListFindingsResponse = ListFindingsResponse
  { -- | The list of Findings returned.
    findings :: (Core.Maybe [Finding]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFindingsResponse' with the minimum fields required to make a request.
newListFindingsResponse ::
  ListFindingsResponse
newListFindingsResponse =
  ListFindingsResponse {findings = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListFindingsResponse where
  parseJSON =
    Core.withObject
      "ListFindingsResponse"
      ( \o ->
          ListFindingsResponse
            Core.<$> (o Core..:? "findings" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListFindingsResponse where
  toJSON ListFindingsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("findings" Core..=) Core.<$> findings,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response for the @ListScanConfigs@ method.
--
-- /See:/ 'newListScanConfigsResponse' smart constructor.
data ListScanConfigsResponse = ListScanConfigsResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of ScanConfigs returned.
    scanConfigs :: (Core.Maybe [ScanConfig])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListScanConfigsResponse' with the minimum fields required to make a request.
newListScanConfigsResponse ::
  ListScanConfigsResponse
newListScanConfigsResponse =
  ListScanConfigsResponse
    { nextPageToken = Core.Nothing,
      scanConfigs = Core.Nothing
    }

instance Core.FromJSON ListScanConfigsResponse where
  parseJSON =
    Core.withObject
      "ListScanConfigsResponse"
      ( \o ->
          ListScanConfigsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "scanConfigs" Core..!= Core.mempty)
      )

instance Core.ToJSON ListScanConfigsResponse where
  toJSON ListScanConfigsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("scanConfigs" Core..=) Core.<$> scanConfigs
          ]
      )

-- | Response for the @ListScanRuns@ method.
--
-- /See:/ 'newListScanRunsResponse' smart constructor.
data ListScanRunsResponse = ListScanRunsResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of ScanRuns returned.
    scanRuns :: (Core.Maybe [ScanRun])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListScanRunsResponse' with the minimum fields required to make a request.
newListScanRunsResponse ::
  ListScanRunsResponse
newListScanRunsResponse =
  ListScanRunsResponse {nextPageToken = Core.Nothing, scanRuns = Core.Nothing}

instance Core.FromJSON ListScanRunsResponse where
  parseJSON =
    Core.withObject
      "ListScanRunsResponse"
      ( \o ->
          ListScanRunsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "scanRuns" Core..!= Core.mempty)
      )

instance Core.ToJSON ListScanRunsResponse where
  toJSON ListScanRunsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("scanRuns" Core..=) Core.<$> scanRuns
          ]
      )

-- | Information reported for an outdated library.
--
-- /See:/ 'newOutdatedLibrary' smart constructor.
data OutdatedLibrary = OutdatedLibrary
  { -- | URLs to learn more information about the vulnerabilities in the library.
    learnMoreUrls :: (Core.Maybe [Core.Text]),
    -- | The name of the outdated library.
    libraryName :: (Core.Maybe Core.Text),
    -- | The version number.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OutdatedLibrary' with the minimum fields required to make a request.
newOutdatedLibrary ::
  OutdatedLibrary
newOutdatedLibrary =
  OutdatedLibrary
    { learnMoreUrls = Core.Nothing,
      libraryName = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON OutdatedLibrary where
  parseJSON =
    Core.withObject
      "OutdatedLibrary"
      ( \o ->
          OutdatedLibrary
            Core.<$> (o Core..:? "learnMoreUrls" Core..!= Core.mempty)
            Core.<*> (o Core..:? "libraryName")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON OutdatedLibrary where
  toJSON OutdatedLibrary {..} =
    Core.object
      ( Core.catMaybes
          [ ("learnMoreUrls" Core..=) Core.<$> learnMoreUrls,
            ("libraryName" Core..=) Core.<$> libraryName,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | A ScanConfig resource contains the configurations to launch a scan.
--
-- /See:/ 'newScanConfig' smart constructor.
data ScanConfig = ScanConfig
  { -- | The authentication configuration. If specified, service will use the authentication configuration during scanning.
    authentication :: (Core.Maybe Authentication),
    -- | The excluded URL patterns as described in https:\/\/cloud.google.com\/security-command-center\/docs\/how-to-use-web-security-scanner#excluding_urls
    blacklistPatterns :: (Core.Maybe [Core.Text]),
    -- | Required. The user provided display name of the ScanConfig.
    displayName :: (Core.Maybe Core.Text),
    -- | Controls export of scan configurations and results to Security Command Center.
    exportToSecurityCommandCenter :: (Core.Maybe ScanConfig_ExportToSecurityCommandCenter),
    -- | Whether to keep scanning even if most requests return HTTP error codes.
    ignoreHttpStatusErrors :: (Core.Maybe Core.Bool),
    -- | Whether the scan config is managed by Web Security Scanner, output only.
    managedScan :: (Core.Maybe Core.Bool),
    -- | The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively. If the field is unspecified or its value is set 0, server will default to 15. Other values outside of [5, 20] range will be rejected with INVALID_ARGUMENT error.
    maxQps :: (Core.Maybe Core.Int32),
    -- | The resource name of the ScanConfig. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'. The ScanConfig IDs are generated by the system.
    name :: (Core.Maybe Core.Text),
    -- | The risk level selected for the scan
    riskLevel :: (Core.Maybe ScanConfig_RiskLevel),
    -- | The schedule of the ScanConfig.
    schedule :: (Core.Maybe Schedule),
    -- | Required. The starting URLs from which the scanner finds site pages.
    startingUrls :: (Core.Maybe [Core.Text]),
    -- | Whether the scan configuration has enabled static IP address scan feature. If enabled, the scanner will access applications from static IP addresses.
    staticIpScan :: (Core.Maybe Core.Bool),
    -- | The user agent used during scanning.
    userAgent :: (Core.Maybe ScanConfig_UserAgent)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScanConfig' with the minimum fields required to make a request.
newScanConfig ::
  ScanConfig
newScanConfig =
  ScanConfig
    { authentication = Core.Nothing,
      blacklistPatterns = Core.Nothing,
      displayName = Core.Nothing,
      exportToSecurityCommandCenter = Core.Nothing,
      ignoreHttpStatusErrors = Core.Nothing,
      managedScan = Core.Nothing,
      maxQps = Core.Nothing,
      name = Core.Nothing,
      riskLevel = Core.Nothing,
      schedule = Core.Nothing,
      startingUrls = Core.Nothing,
      staticIpScan = Core.Nothing,
      userAgent = Core.Nothing
    }

instance Core.FromJSON ScanConfig where
  parseJSON =
    Core.withObject
      "ScanConfig"
      ( \o ->
          ScanConfig
            Core.<$> (o Core..:? "authentication")
            Core.<*> (o Core..:? "blacklistPatterns" Core..!= Core.mempty)
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "exportToSecurityCommandCenter")
            Core.<*> (o Core..:? "ignoreHttpStatusErrors")
            Core.<*> (o Core..:? "managedScan")
            Core.<*> (o Core..:? "maxQps")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "riskLevel")
            Core.<*> (o Core..:? "schedule")
            Core.<*> (o Core..:? "startingUrls" Core..!= Core.mempty)
            Core.<*> (o Core..:? "staticIpScan")
            Core.<*> (o Core..:? "userAgent")
      )

instance Core.ToJSON ScanConfig where
  toJSON ScanConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("authentication" Core..=) Core.<$> authentication,
            ("blacklistPatterns" Core..=)
              Core.<$> blacklistPatterns,
            ("displayName" Core..=) Core.<$> displayName,
            ("exportToSecurityCommandCenter" Core..=)
              Core.<$> exportToSecurityCommandCenter,
            ("ignoreHttpStatusErrors" Core..=)
              Core.<$> ignoreHttpStatusErrors,
            ("managedScan" Core..=) Core.<$> managedScan,
            ("maxQps" Core..=) Core.<$> maxQps,
            ("name" Core..=) Core.<$> name,
            ("riskLevel" Core..=) Core.<$> riskLevel,
            ("schedule" Core..=) Core.<$> schedule,
            ("startingUrls" Core..=) Core.<$> startingUrls,
            ("staticIpScan" Core..=) Core.<$> staticIpScan,
            ("userAgent" Core..=) Core.<$> userAgent
          ]
      )

-- | Defines a custom error message used by CreateScanConfig and UpdateScanConfig APIs when scan configuration validation fails. It is also reported as part of a ScanRunErrorTrace message if scan validation fails due to a scan configuration error.
--
-- /See:/ 'newScanConfigError' smart constructor.
data ScanConfigError = ScanConfigError
  { -- | Output only. Indicates the reason code for a configuration failure.
    code :: (Core.Maybe ScanConfigError_Code),
    -- | Output only. Indicates the full name of the ScanConfig field that triggers this error, for example \"scan/config.max/qps\". This field is provided for troubleshooting purposes only and its actual value can change in the future.
    fieldName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScanConfigError' with the minimum fields required to make a request.
newScanConfigError ::
  ScanConfigError
newScanConfigError =
  ScanConfigError {code = Core.Nothing, fieldName = Core.Nothing}

instance Core.FromJSON ScanConfigError where
  parseJSON =
    Core.withObject
      "ScanConfigError"
      ( \o ->
          ScanConfigError
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "fieldName")
      )

instance Core.ToJSON ScanConfigError where
  toJSON ScanConfigError {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("fieldName" Core..=) Core.<$> fieldName
          ]
      )

-- | A ScanRun is a output-only resource representing an actual run of the scan. Next id: 12
--
-- /See:/ 'newScanRun' smart constructor.
data ScanRun = ScanRun
  { -- | Output only. The time at which the ScanRun reached termination state - that the ScanRun is either finished or stopped by user.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. If result_state is an ERROR, this field provides the primary reason for scan\'s termination and more details, if such are available.
    errorTrace :: (Core.Maybe ScanRunErrorTrace),
    -- | Output only. The execution state of the ScanRun.
    executionState :: (Core.Maybe ScanRun_ExecutionState),
    -- | Output only. Whether the scan run has found any vulnerabilities.
    hasVulnerabilities :: (Core.Maybe Core.Bool),
    -- | Output only. The resource name of the ScanRun. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'. The ScanRun IDs are generated by the system.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The percentage of total completion ranging from 0 to 100. If the scan is in queue, the value is 0. If the scan is running, the value ranges from 0 to 100. If the scan is finished, the value is 100.
    progressPercent :: (Core.Maybe Core.Int32),
    -- | Output only. The result state of the ScanRun. This field is only available after the execution state reaches \"FINISHED\".
    resultState :: (Core.Maybe ScanRun_ResultState),
    -- | Output only. The time at which the ScanRun started.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. The number of URLs crawled during this ScanRun. If the scan is in progress, the value represents the number of URLs crawled up to now.
    urlsCrawledCount :: (Core.Maybe Core.Int64),
    -- | Output only. The number of URLs tested during this ScanRun. If the scan is in progress, the value represents the number of URLs tested up to now. The number of URLs tested is usually larger than the number URLS crawled because typically a crawled URL is tested with multiple test payloads.
    urlsTestedCount :: (Core.Maybe Core.Int64),
    -- | Output only. A list of warnings, if such are encountered during this scan run.
    warningTraces :: (Core.Maybe [ScanRunWarningTrace])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScanRun' with the minimum fields required to make a request.
newScanRun ::
  ScanRun
newScanRun =
  ScanRun
    { endTime = Core.Nothing,
      errorTrace = Core.Nothing,
      executionState = Core.Nothing,
      hasVulnerabilities = Core.Nothing,
      name = Core.Nothing,
      progressPercent = Core.Nothing,
      resultState = Core.Nothing,
      startTime = Core.Nothing,
      urlsCrawledCount = Core.Nothing,
      urlsTestedCount = Core.Nothing,
      warningTraces = Core.Nothing
    }

instance Core.FromJSON ScanRun where
  parseJSON =
    Core.withObject
      "ScanRun"
      ( \o ->
          ScanRun
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "errorTrace")
            Core.<*> (o Core..:? "executionState")
            Core.<*> (o Core..:? "hasVulnerabilities")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "progressPercent")
            Core.<*> (o Core..:? "resultState")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "urlsCrawledCount")
            Core.<*> (o Core..:? "urlsTestedCount")
            Core.<*> (o Core..:? "warningTraces" Core..!= Core.mempty)
      )

instance Core.ToJSON ScanRun where
  toJSON ScanRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("errorTrace" Core..=) Core.<$> errorTrace,
            ("executionState" Core..=) Core.<$> executionState,
            ("hasVulnerabilities" Core..=)
              Core.<$> hasVulnerabilities,
            ("name" Core..=) Core.<$> name,
            ("progressPercent" Core..=) Core.<$> progressPercent,
            ("resultState" Core..=) Core.<$> resultState,
            ("startTime" Core..=) Core.<$> startTime,
            ("urlsCrawledCount" Core..=) Core.. Core.AsText
              Core.<$> urlsCrawledCount,
            ("urlsTestedCount" Core..=) Core.. Core.AsText
              Core.<$> urlsTestedCount,
            ("warningTraces" Core..=) Core.<$> warningTraces
          ]
      )

-- | Output only. Defines an error trace message for a ScanRun.
--
-- /See:/ 'newScanRunErrorTrace' smart constructor.
data ScanRunErrorTrace = ScanRunErrorTrace
  { -- | Output only. Indicates the error reason code.
    code :: (Core.Maybe ScanRunErrorTrace_Code),
    -- | Output only. If the scan encounters TOO/MANY/HTTP/ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT/FOUND responses.
    mostCommonHttpErrorCode :: (Core.Maybe Core.Int32),
    -- | Output only. If the scan encounters SCAN/CONFIG/ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.
    scanConfigError :: (Core.Maybe ScanConfigError)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScanRunErrorTrace' with the minimum fields required to make a request.
newScanRunErrorTrace ::
  ScanRunErrorTrace
newScanRunErrorTrace =
  ScanRunErrorTrace
    { code = Core.Nothing,
      mostCommonHttpErrorCode = Core.Nothing,
      scanConfigError = Core.Nothing
    }

instance Core.FromJSON ScanRunErrorTrace where
  parseJSON =
    Core.withObject
      "ScanRunErrorTrace"
      ( \o ->
          ScanRunErrorTrace
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "mostCommonHttpErrorCode")
            Core.<*> (o Core..:? "scanConfigError")
      )

instance Core.ToJSON ScanRunErrorTrace where
  toJSON ScanRunErrorTrace {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("mostCommonHttpErrorCode" Core..=)
              Core.<$> mostCommonHttpErrorCode,
            ("scanConfigError" Core..=)
              Core.<$> scanConfigError
          ]
      )

-- | Output only. Defines a warning trace message for ScanRun. Warning traces provide customers with useful information that helps make the scanning process more effective.
--
-- /See:/ 'newScanRunWarningTrace' smart constructor.
newtype ScanRunWarningTrace = ScanRunWarningTrace
  { -- | Output only. Indicates the warning code.
    code :: (Core.Maybe ScanRunWarningTrace_Code)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScanRunWarningTrace' with the minimum fields required to make a request.
newScanRunWarningTrace ::
  ScanRunWarningTrace
newScanRunWarningTrace = ScanRunWarningTrace {code = Core.Nothing}

instance Core.FromJSON ScanRunWarningTrace where
  parseJSON =
    Core.withObject
      "ScanRunWarningTrace"
      ( \o ->
          ScanRunWarningTrace Core.<$> (o Core..:? "code")
      )

instance Core.ToJSON ScanRunWarningTrace where
  toJSON ScanRunWarningTrace {..} =
    Core.object
      (Core.catMaybes [("code" Core..=) Core.<$> code])

-- | Scan schedule configuration.
--
-- /See:/ 'newSchedule' smart constructor.
data Schedule = Schedule
  { -- | Required. The duration of time between executions in days.
    intervalDurationDays :: (Core.Maybe Core.Int32),
    -- | A timestamp indicates when the next run will be scheduled. The value is refreshed by the server after each run. If unspecified, it will default to current server time, which means the scan will be scheduled to start immediately.
    scheduleTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Schedule' with the minimum fields required to make a request.
newSchedule ::
  Schedule
newSchedule =
  Schedule {intervalDurationDays = Core.Nothing, scheduleTime = Core.Nothing}

instance Core.FromJSON Schedule where
  parseJSON =
    Core.withObject
      "Schedule"
      ( \o ->
          Schedule
            Core.<$> (o Core..:? "intervalDurationDays")
            Core.<*> (o Core..:? "scheduleTime")
      )

instance Core.ToJSON Schedule where
  toJSON Schedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("intervalDurationDays" Core..=)
              Core.<$> intervalDurationDays,
            ("scheduleTime" Core..=) Core.<$> scheduleTime
          ]
      )

-- | Request for the @StartScanRun@ method.
--
-- /See:/ 'newStartScanRunRequest' smart constructor.
data StartScanRunRequest = StartScanRunRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartScanRunRequest' with the minimum fields required to make a request.
newStartScanRunRequest ::
  StartScanRunRequest
newStartScanRunRequest = StartScanRunRequest

instance Core.FromJSON StartScanRunRequest where
  parseJSON =
    Core.withObject
      "StartScanRunRequest"
      (\o -> Core.pure StartScanRunRequest)

instance Core.ToJSON StartScanRunRequest where
  toJSON = Core.const Core.emptyObject

-- | Request for the @StopScanRun@ method.
--
-- /See:/ 'newStopScanRunRequest' smart constructor.
data StopScanRunRequest = StopScanRunRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StopScanRunRequest' with the minimum fields required to make a request.
newStopScanRunRequest ::
  StopScanRunRequest
newStopScanRunRequest = StopScanRunRequest

instance Core.FromJSON StopScanRunRequest where
  parseJSON =
    Core.withObject
      "StopScanRunRequest"
      (\o -> Core.pure StopScanRunRequest)

instance Core.ToJSON StopScanRunRequest where
  toJSON = Core.const Core.emptyObject

-- | Information regarding any resource causing the vulnerability such as JavaScript sources, image, audio files, etc.
--
-- /See:/ 'newViolatingResource' smart constructor.
data ViolatingResource = ViolatingResource
  { -- | The MIME type of this resource.
    contentType :: (Core.Maybe Core.Text),
    -- | URL of this violating resource.
    resourceUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ViolatingResource' with the minimum fields required to make a request.
newViolatingResource ::
  ViolatingResource
newViolatingResource =
  ViolatingResource {contentType = Core.Nothing, resourceUrl = Core.Nothing}

instance Core.FromJSON ViolatingResource where
  parseJSON =
    Core.withObject
      "ViolatingResource"
      ( \o ->
          ViolatingResource
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "resourceUrl")
      )

instance Core.ToJSON ViolatingResource where
  toJSON ViolatingResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("resourceUrl" Core..=) Core.<$> resourceUrl
          ]
      )

-- | Information about vulnerable or missing HTTP Headers.
--
-- /See:/ 'newVulnerableHeaders' smart constructor.
data VulnerableHeaders = VulnerableHeaders
  { -- | List of vulnerable headers.
    headers :: (Core.Maybe [Header]),
    -- | List of missing headers.
    missingHeaders :: (Core.Maybe [Header])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VulnerableHeaders' with the minimum fields required to make a request.
newVulnerableHeaders ::
  VulnerableHeaders
newVulnerableHeaders =
  VulnerableHeaders {headers = Core.Nothing, missingHeaders = Core.Nothing}

instance Core.FromJSON VulnerableHeaders where
  parseJSON =
    Core.withObject
      "VulnerableHeaders"
      ( \o ->
          VulnerableHeaders
            Core.<$> (o Core..:? "headers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "missingHeaders" Core..!= Core.mempty)
      )

instance Core.ToJSON VulnerableHeaders where
  toJSON VulnerableHeaders {..} =
    Core.object
      ( Core.catMaybes
          [ ("headers" Core..=) Core.<$> headers,
            ("missingHeaders" Core..=) Core.<$> missingHeaders
          ]
      )

-- | Information about vulnerable request parameters.
--
-- /See:/ 'newVulnerableParameters' smart constructor.
newtype VulnerableParameters = VulnerableParameters
  { -- | The vulnerable parameter names.
    parameterNames :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VulnerableParameters' with the minimum fields required to make a request.
newVulnerableParameters ::
  VulnerableParameters
newVulnerableParameters = VulnerableParameters {parameterNames = Core.Nothing}

instance Core.FromJSON VulnerableParameters where
  parseJSON =
    Core.withObject
      "VulnerableParameters"
      ( \o ->
          VulnerableParameters
            Core.<$> (o Core..:? "parameterNames" Core..!= Core.mempty)
      )

instance Core.ToJSON VulnerableParameters where
  toJSON VulnerableParameters {..} =
    Core.object
      ( Core.catMaybes
          [("parameterNames" Core..=) Core.<$> parameterNames]
      )

-- | Information reported for an XSS.
--
-- /See:/ 'newXss' smart constructor.
data Xss = Xss
  { -- | The attack vector of the payload triggering this XSS.
    attackVector :: (Core.Maybe Xss_AttackVector),
    -- | An error message generated by a javascript breakage.
    errorMessage :: (Core.Maybe Core.Text),
    -- | Stack traces leading to the point where the XSS occurred.
    stackTraces :: (Core.Maybe [Core.Text]),
    -- | The reproduction url for the seeding POST request of a Stored XSS.
    storedXssSeedingUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Xss' with the minimum fields required to make a request.
newXss ::
  Xss
newXss =
  Xss
    { attackVector = Core.Nothing,
      errorMessage = Core.Nothing,
      stackTraces = Core.Nothing,
      storedXssSeedingUrl = Core.Nothing
    }

instance Core.FromJSON Xss where
  parseJSON =
    Core.withObject
      "Xss"
      ( \o ->
          Xss
            Core.<$> (o Core..:? "attackVector")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "stackTraces" Core..!= Core.mempty)
            Core.<*> (o Core..:? "storedXssSeedingUrl")
      )

instance Core.ToJSON Xss where
  toJSON Xss {..} =
    Core.object
      ( Core.catMaybes
          [ ("attackVector" Core..=) Core.<$> attackVector,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("stackTraces" Core..=) Core.<$> stackTraces,
            ("storedXssSeedingUrl" Core..=)
              Core.<$> storedXssSeedingUrl
          ]
      )

-- | Information reported for an XXE.
--
-- /See:/ 'newXxe' smart constructor.
data Xxe = Xxe
  { -- | Location within the request where the payload was placed.
    payloadLocation :: (Core.Maybe Xxe_PayloadLocation),
    -- | The XML string that triggered the XXE vulnerability. Non-payload values might be redacted.
    payloadValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Xxe' with the minimum fields required to make a request.
newXxe ::
  Xxe
newXxe = Xxe {payloadLocation = Core.Nothing, payloadValue = Core.Nothing}

instance Core.FromJSON Xxe where
  parseJSON =
    Core.withObject
      "Xxe"
      ( \o ->
          Xxe
            Core.<$> (o Core..:? "payloadLocation")
            Core.<*> (o Core..:? "payloadValue")
      )

instance Core.ToJSON Xxe where
  toJSON Xxe {..} =
    Core.object
      ( Core.catMaybes
          [ ("payloadLocation" Core..=)
              Core.<$> payloadLocation,
            ("payloadValue" Core..=) Core.<$> payloadValue
          ]
      )
