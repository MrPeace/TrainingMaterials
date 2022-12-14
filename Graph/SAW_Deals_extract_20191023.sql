/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1 [id]
      ,[deal_id]
      ,[status_id]
      ,[kbraRated]
      ,[surveillance]
      ,[internalComment]
      ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([internalStructureComment],'<p>', '')
      ,'</p>', ''), '&nbsp',''), char(10), ''), char(13), '') AS 'internalStructureComment'
      ,[bloombergDealName]
      ,[bPieceHolder_id]
      ,[operatingAdvisor_id]
      ,[standardizedMasterServicer_id]
      ,[additionalMasterServicer1_id]
      ,[additionalMasterServicer2_id]
      ,[standardizedSpecialServicer_id]
      ,[additionalSpecialServicer_id]
      ,[standardizedTrustee_id]
      ,[leadAnalyst_id]
      ,[teamLead_id]
      ,[crossoverClassBond_id]
      ,[dealNameOverride]
      ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([executiveSummaryComment]
      ,'<p>', ''),'</p>', ''), '&nbsp',''), char(10), ''), char(13), '') AS 'executiveSummaryComment'
      ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([maturityRiskComment]
      ,'<p>', ''),'</p>', ''), '&nbsp',''), char(10), ''), char(13), '') AS 'maturityRiskComment'
      ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([kLocComment]
      ,'<p>', ''),'</p>', ''), '&nbsp',''), char(10), ''), char(13), '') AS 'kLocComment'
      ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([topTenComment]
      ,'<p>', ''),'</p>', ''), '&nbsp',''), char(10), ''), char(13), '') AS 'topTenComment'
      ,[prospectusSupplementFilename]
      ,[poolingAndServicingFilename]
      ,[annexAFilename]
      ,[offeringMemorandumFilename]
      ,[reportAnalyst_id]
      ,[hasHadIntermediateTermMaturity]
      ,[reportSet_id]
      ,[coverageInitiatedOverride]
      ,[tapeDate]
      ,[numberLoansShownInReport]
      ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([loanSpecificCertificatesComment]
      ,'<p>', ''),'</p>', ''), '&nbsp',''), char(10), ''), char(13), '') AS 'loanSpecificCertificatesComment'
      ,[isCoverageConcluded]
      ,[isFullyDefeased]
      ,[propertyCountInDealAtIssuance]
      ,[closingLoanCount]
      ,[isKbraCalculatedLtv]
      ,[closingLtvSource]
      ,[closingLtvOverride]
      ,[isProRataCalculated]

      --select count_big(*)
  FROM [saw].[dbo].[SAW_Deal]